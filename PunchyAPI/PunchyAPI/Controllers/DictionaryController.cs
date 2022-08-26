using Microsoft.AspNetCore.Mvc;
using PunchyAPI.Common;
using PunchyAPI.Common.Stemmer;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunchyAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DictionaryController : ControllerBase
    {
        private readonly ZilzStemmer _zilzStemmer;
        private readonly PorterStemmer _porterStemmer;
        public DictionaryController()
        {
            _zilzStemmer = new ZilzStemmer();
            _porterStemmer = new PorterStemmer();
        }

        [HttpGet("stem/{keyPhrase}")]
        public string GetStem(string keyPhrase)
        {
            return _zilzStemmer.GetStem(keyPhrase);
        }

        [HttpGet("porterStem/{keyPhrase}")]
        public string GetPorterStem(string keyPhrase)
        {
            return _porterStemmer.GetStem(keyPhrase);
        }
    }
}
