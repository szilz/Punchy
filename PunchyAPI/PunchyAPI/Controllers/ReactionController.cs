using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunchyBot.ServiceAgent;

namespace PunchyAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReactionController : ControllerBase
    {
        private PunAPIServiceAgent punAPIAgent;
        public ReactionController()
        {
            this.punAPIAgent = new PunAPIServiceAgent();
        }
        [HttpGet("Type")]
        public async Task<List<ReactionType>> Get()
        {
            List<ReactionType> newReact = await punAPIAgent.getReactionTypes();
            return newReact;
        }

        // POST api/<ReactController>
        [HttpPost]
        public async Task<ReactionResponse> Post([FromBody] ReactionRequest value)
        {
            var resp = await punAPIAgent.PostReaction(value);
            return resp;
        }
    }
}