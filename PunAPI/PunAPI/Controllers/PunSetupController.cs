using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;


// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class PunSetupController : ControllerBase
{
    // GET: api/<ValuesController>
    [HttpGet]
    public async Task<List<PunSetup>> Get()
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetup>("select * from PunSetup");
        return punData.ToList();
    }

    // GET api/<ValuesController>/5
    [HttpGet("{id}")]
    public async Task<List<PunSetup>> Get(Guid id)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetup>("select * from PunSetup where PunSetupID = @id", new { id });
        return punData.ToList();
    }

    // POST api/<ValuesController>
    [HttpPost]
    public void Post([FromBody] string value)
    {
        //create a record -- comment
    }

    // PUT api/<ValuesController>/5
    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
        //update a record -- comment / not implemented error code
    }

    // DELETE api/<ValuesController>/5
    [HttpDelete("{id}")]
    public void Delete(int id)
    {
    }
}

