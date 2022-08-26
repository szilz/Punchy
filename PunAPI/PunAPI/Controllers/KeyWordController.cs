using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Common;
using PunAPI.Contract;
using System.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class KeyWordController : ControllerBase
{
    // GET: api/<KeyWordController>
    [HttpGet]
    public async Task<List<KeyWord>> Get(int? stringLength, [FromQuery] List<string> startsWith)
    {
        // this implemenation will not work to authenticate through azure, it would only work locally; commented out
        // string connStr = await KeyVaultHelper.GetConnectionString(Constants.KeyVault_DB_Secret_Name);

        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        if (stringLength == null && startsWith.Count == 0)
        {
            var punData = await conn.QueryAsync<KeyWord>("select * from KeyWord");
            return punData.ToList();
        }
        else
        {
            var keyWords = await conn.QueryAsync<KeyWord>("select * from KeyWord where len(Word) >= @stringLength - 1 and len(Word) <= @stringLength + 1 and left(word, 1) in @startsWith", new { stringLength, startsWith });
            return keyWords.ToList();
        }
    }

    // GET api/<KeyWordController>/5
    [HttpGet("{id}")]
    public async Task<List<KeyWord>> Get(Guid id)
    {   // this implemenation will not work to authenticate through azure, it would only work locally; commented out
        // string connStr = await KeyVaultHelper.GetConnectionString(Constants.KeyVault_DB_Secret_Name);

        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");

        var punData = await conn.QueryAsync<KeyWord>("select * from KeyWord where KeyWordID = @id", new { id });
        return punData.ToList();
    }
}