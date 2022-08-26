using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunchyBot.ServiceAgent;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunchyAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PunSetupRespSubmitController : ControllerBase
    {
        private PunAPIServiceAgent punAPIAgent;
        public PunSetupRespSubmitController()
        {
            this.punAPIAgent = new PunAPIServiceAgent();
        }

        // GET api/PunSetupRespSubmit/Type
        // Gets all submit types from the submit table via PunAPI
        [HttpGet("Type")]
        public async Task<List<SubmitType>> Get()
        {
            List<SubmitType> newSubmit = await punAPIAgent.getSubmitTypes();
            return newSubmit;
        }

        // POST api/<PunSetupRespSubmitController>
        // Posts user input (request) pun setup and response to the PunSetupRespSubmit table via PunAPI
        [HttpPost]
        public async void Post([FromBody] PunSetupRespSubmitRequest request)
        {
            await punAPIAgent.PostPunSetupRespSubmit(request);
        }

        // POST api/<PunSetupRespSubmitApprovalController>
        //create a post to the PunSetupRespSubmitApproval endpoint
        [HttpPost("Approve")]
        public async void PostPunSetupRespSubmitApproval([FromBody] PunSetupRespSubmitApproval request)
        {
            await punAPIAgent.PostPunSetupRespSubmitApproval(request);
        }

        // GET api/PunSetupRespSubmit/ApprovalType 
        [HttpGet("ApprovalType")]
        public async Task<List<ApprovalType>> GetApprovalType()
        {
            List<ApprovalType> newSubmit = await punAPIAgent.getApprovalType();
            return newSubmit;
        }
    }
}
