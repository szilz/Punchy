using System;
namespace PunAPI.Contract;

public class PunSetupRespSubmitApprovalDto
{
    public Guid PunSetupRespSubmitID { get; set; }
    public string UserName { get; set; } = null!;
    public Guid ApprovalTypeID { get; set; } 
}
