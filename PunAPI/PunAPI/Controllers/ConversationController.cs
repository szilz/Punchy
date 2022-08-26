using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using System.Data;
using Microsoft.Data.SqlClient;
using Dapper;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ConversationController : ControllerBase
    {
        // GET: api/<ConversationController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<ConversationController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<ConversationController>
        [HttpPost]
        public async Task<ConversationResponse> Post([FromBody] ConversationRequest request)
        {
            using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
            var convID = Guid.NewGuid();
            var createDate = DateTime.UtcNow;
            await conn.ExecuteAsync(@"insert into Conversation(ConversationID, UserName, CreateDate) values (@convID, @userName, @createDate)", new { convID, userName = request.UserName, createDate });
            var conv = new ConversationResponse { ConversationID = convID };
            return conv;
        }

        // PUT api/<ConversationController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ConversationController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
