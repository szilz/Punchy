using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunAPI.Repositories;

namespace PunAPI.Controllers;
[Route("api/[controller]")]
[ApiController]


public class PunSetupRespSubmitApprovalController : ControllerBase
{
    private readonly PunSetupRespSubmitApprovalRepository _repository;

    //Create Constructor with object type ApprovalType to communicate with Repository class
    public PunSetupRespSubmitApprovalController()
    {
        _repository = new PunSetupRespSubmitApprovalRepository();
    }

    //Get Method retrieves objects of type PunSetupRespSubmitApproval
    [HttpGet]
    public async Task<List<PunSetupRespSubmitApprovalDto>> Get()
    {
        return await _repository.Get();
    }

    //Create an object to post into the PunSetupRespSubmitApproval table in the database
    [HttpPost]
    public async Task Post(Guid PunSetupRespSubmitID, string UserName, Guid ApprovalTypeID)
    {
        await _repository.PostAsync(PunSetupRespSubmitID, UserName, ApprovalTypeID);
    }

}
