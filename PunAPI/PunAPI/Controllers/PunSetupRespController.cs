using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunAPI.Services;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunAPI.Controllers;

[Route("api/[controller]")]
[ApiController]
public class PunSetupRespController : ControllerBase
{
    private readonly PunSetupRespService _service;
    
    //Create Constructor with object type PunSetupRespService to communicate with Service class
    public PunSetupRespController()
    {
        _service = new PunSetupRespService();
    }

    // GET: api/<PunSetupRespController>

    [HttpGet]
    public Task<List<PunSetupRespDto>> Get([FromQuery] List<string> setupKeyWord, [FromQuery] List<string> responseKeyWord)
    {
        return _service.GetPunSetupResponseByKeywords(setupKeyWord, responseKeyWord);//calls wrapper in Service class
    }

    // GET api/<PunSetupRespController>/5
    [HttpGet("{id}")]
    public Task<PunSetupRespDto> Get(Guid id)
    {
        return _service.GetPunSetupResponseByPunSetupResponseID(id); //calls wrapper in Service class
    }
}

