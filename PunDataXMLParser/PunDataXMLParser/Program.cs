using System.Data;
using System.Text;
using System.Xml;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Dapper;

//Obtain data file locations
string fullPath = System.Reflection.Assembly.GetAssembly(typeof(Program)).Location;
string fullToData = @"\..\..\..\..\..\..\PunDB\data\trial";
string dataPath = Path.Combine(fullPath + fullToData);
string[] dataFiles = Directory.GetFiles(dataPath, "*.xml");

//Establish SQL DB connection
using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");


//Print formatted sentences
foreach (string file in dataFiles)
{
    XmlDocument doc = new XmlDocument();
    doc.Load(file);

    if (doc.DocumentElement != null)
    {
        foreach (XmlNode node in doc.DocumentElement.ChildNodes)
        {
            StringBuilder text = new StringBuilder("");
            foreach (XmlNode localNode in node)
            {
                string localText = localNode.InnerText;
                if (char.IsPunctuation(localText, 0))
                {
                    string tempText = text.ToString(); //trying to find workaround
                    if (text.Length > 1 && tempText.Substring(text.Length - 1) == " ")
                    {
                        text.Remove(text.Length - 1, 1);
                        text.Append(localText);
                        text.Append(' ');
                    }
                    else
                    {
                        text.Append(localText);
                    }
                }
                else
                {
                    text.Append(localText);
                    text.Append(' ');
                }
            }
            text.Remove(text.Length - 1, 1);
            Console.WriteLine(text);
            string input = text.ToString();
            int inputCount = (int)await conn.ExecuteScalarAsync(@"select count(*) from PunResp where ResponsePhrase = @input", new { input });
            if (inputCount > 0)
            {
                Console.WriteLine($"Skip: {input}");
            }
            else
            {
                await conn.ExecuteAsync(@"insert into PunResp(ResponsePhrase) values (@input)", new { input });
            }
        }
    }
}