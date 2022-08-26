using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

namespace PunAPI.Controllers;
[Route("api/[controller]")]
[ApiController]

public class ReactionTypeController : ControllerBase
{
    [HttpGet]
    public async Task<List<ReactionType>> Get()
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<ReactionType>("select * from ReactionType");
        return punData.ToList();
    }

}

