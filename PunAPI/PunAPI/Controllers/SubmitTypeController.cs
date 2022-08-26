using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

namespace PunAPI.Controllers;
[Route("api/[controller]")]
[ApiController]

public class SubmitTypeController : ControllerBase
{
    [HttpGet]
    public async Task<List<SubmitType>> Get()
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<SubmitType>("select * from SubmitType");
        return punData.ToList();
    }

}

