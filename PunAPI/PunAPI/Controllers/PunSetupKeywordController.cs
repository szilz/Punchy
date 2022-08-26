using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class PunSetupKeywordController : ControllerBase
{
    // GET: api/<PunSetupKeywordController>
    [HttpGet]
    public async Task<List<PunSetupKeyWord>> Get()
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetupKeyWord>("select * from PunSetupKeyWord");
        return punData.ToList();
    }

    // GET api/<PunSetupKeywordController>/5
    [HttpGet("{id}")]
    public async Task<List<PunSetupKeyWord>> Get(Guid id)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetupKeyWord>("select * from PunSetup where PunSetupKeyWordID = @id", new { id });
        return punData.ToList();
    }

    // POST api/<PunSetupKeywordController>
    [HttpPost]
    public void Post([FromBody] string value)
    {
    }

    // PUT api/<PunSetupKeywordController>/5
    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
    }

    // DELETE api/<PunSetupKeywordController>/5
    [HttpDelete("{id}")]
    public void Delete(int id)
    {
    }
}

