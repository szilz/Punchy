using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class PunResponseKeyWordController : ControllerBase
{
    // GET: api/<PunResponseKeyWordController>
    [HttpGet]
    public async Task<List<PunResponseKeyWord>> Get()
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunResponseKeyWord>("select * from PunResponseKeyWord");
        return punData.ToList();
    }

    // GET api/<PunResponseKeyWordController>/5
    [HttpGet("{id}")]
    public async Task<List<PunResponseKeyWord>> Get(Guid id)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunResponseKeyWord>("select * from PunResponseKeyWord where PunResponseKeyWordID  = @id", new { id });
        return punData.ToList();
    }

    // POST api/<PunResponseKeyWordController>
    [HttpPost]
    public void Post([FromBody] string value)
    {
    }

    // PUT api/<PunResponseKeyWordController>/5
    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
    }

    // DELETE api/<PunResponseKeyWordController>/5
    [HttpDelete("{id}")]
    public void Delete(int id)
    {
    }
}