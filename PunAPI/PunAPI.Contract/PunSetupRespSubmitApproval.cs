namespace PunAPI.Contract;

public class PunSetupRespSubmitApproval
{
    public Guid PunSetupRespSubmitApprovalID { get; set; }
    public Guid PunSetupRespSubmitID { get; set; }
    public string UserName { get; set; } = null!;
    public Guid ApprovalTypeID { get; set; }
    public DateTime CreateDate { get; set; }    
}
 

