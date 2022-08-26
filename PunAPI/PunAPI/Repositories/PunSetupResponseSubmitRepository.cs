using Dapper;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;
using System.Data;

namespace PunAPI.Repositories
{
    public class PunSetupResponseSubmitRepository
    {
        

        public async Task<List<PunSetupRespSubmitDto>> Get()
        {
            IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
            var punData = await conn.QueryAsync<PunSetupRespSubmitDto>("select * from PunSetupRespSubmit");
            return punData.ToList();
        }
    }
}
