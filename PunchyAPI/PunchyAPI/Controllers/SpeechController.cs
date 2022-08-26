using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunchyAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SpeechController : ControllerBase
    {
        // GET: api/<SpeechController>
        [HttpGet]
       

        [ApiExplorerSettings(IgnoreApi = true)]
        public int GetOptimizedLeven(string firstWord, string secondWord)
        {

            return 0;
        }


        // GET api/<SpeechController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<SpeechController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<SpeechController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<SpeechController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
