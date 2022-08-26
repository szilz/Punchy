using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunAPI.Repositories;

namespace PunAPI.Controllers;
[Route("api/[controller]")]
[ApiController]


public class ApprovalTypeController : ControllerBase
{
    private readonly ApprovalTypeRepository _repository;

    //Create Constructor with object type ApprovalType to communicate with Repository class
    public ApprovalTypeController()
    {
        _repository = new ApprovalTypeRepository();
    }
    [HttpGet]
    public async Task<List<ApprovalType>> Get()
    {
        return await _repository.Get();
    }

}

