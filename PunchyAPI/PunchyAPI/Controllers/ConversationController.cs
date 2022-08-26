using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunchyBot.ServiceAgent;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunchyAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ConversationController : ControllerBase
    {
        private PunAPIServiceAgent punAPIAgent;
        public ConversationController()
        {
            this.punAPIAgent = new PunAPIServiceAgent();
        }
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
        public async Task<ConversationResponse> Post([FromBody] ConversationRequest value)
        {
            return await punAPIAgent.PostConversation(value);
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
