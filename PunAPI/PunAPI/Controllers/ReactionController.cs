using System.Data;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;

namespace PunAPI.Controllers;
[Route("api/[controller]")]
[ApiController]
public class ReactionController : Controller
{
    [HttpPost]
    public async Task<ReactionResponse> Post([FromBody] ReactionRequest request)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var reactID = Guid.NewGuid();
        var createDate = DateTime.UtcNow;
        await conn.ExecuteAsync(@"insert into Reaction(ReactionID, ConversationID, PunSetupID, PunRespID, ReactionTypeID, CreateDate) 
                                values (@ReactionID, @ConversationID, @punSetupID, @punRespID, @reactionTypeID, @createDate)", 
                                new {ReactionID =reactID,ConversationID= request.ConversationID, punSetupID =request.PunSetupID, punRespID = request.PunRespID, reactionTypeID = request.ReactionTypeID, createDate });
        ReactionResponse react = new ReactionResponse();
        react.ReactionID = reactID;
        return react;
    }
}