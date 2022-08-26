using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;
using PunAPI.Repositories;
using System.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PunSetupRespSubmitController : ControllerBase
    {
        private readonly PunSetupResponseSubmitRepository _repository;

        //Create Constructor with object type ApprovalType to communicate with Repository class
        public PunSetupRespSubmitController()
        {
            _repository = new PunSetupResponseSubmitRepository();
        }

        // POST api/<PunSetupRespSubmitController>
        [HttpPost]
        public async Task PostAsync([FromBody] PunSetupRespSubmitRequest request)
        {
            var submitTypeID = request.SubmitTypeID;
            var setupPhrase = request.SetupPhrase;
            var responsePhrase = request.ResponsePhrase;

            using (IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;"))
            {
                int inputCount = (int)await conn.ExecuteScalarAsync(@"select count(*) from PunSetupRespSubmit where SetupPhrase = @setupPhrase and ResponsePhrase = @responsePhrase", new { setupPhrase, responsePhrase });
                if (inputCount == 0)
                {
                    await conn.ExecuteAsync(@"insert into PunSetupRespSubmit(SubmitTypeID, SetupPhrase, ResponsePhrase) values (@submitTypeID, @setupPhrase, @responsePhrase)", new { submitTypeID, setupPhrase, responsePhrase });
                }

            };
                    
        }
        //GET api/<PunSetupRespSubmitController>
        [HttpGet]
        public async Task<List<PunSetupRespSubmitDto>> Get()
        {

            return await _repository.Get();
        }
    }
}
