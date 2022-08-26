using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class PunRespController : ControllerBase
{
    // GET: api/<PunRespController>
    [HttpGet]
    public async Task<List<PunResp>> Get([FromQuery]List<string> keyWord)
    {
        var dataTable = new DataTable();
        dataTable.Columns.Add("Word");

        foreach(var word in keyWord)
        {
            dataTable.Rows.Add(word);
        }
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunResp>("getPunResponse", new {wordTable = dataTable.AsTableValuedParameter("WORDLIST")}, commandType: CommandType.StoredProcedure);
        return punData.ToList(); 
    }

    // GET api/<PunResponseKeyWordController>/5
    [HttpGet("{id}")]
    public async Task<List<PunResp>> Get(Guid id)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunResp>("select * from PunResp where PunResponseID = @id", new {id});
        return punData.ToList();
    }

    // POST api/<PunRespController>
    [HttpPost]
    public void Post([FromBody] string value)
    {
    }

    // PUT api/<PunRespController>/5
    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
    }

    // DELETE api/<PunRespController>/5
    [HttpDelete("{id}")]
    public void Delete(int id)
    {
    }
}