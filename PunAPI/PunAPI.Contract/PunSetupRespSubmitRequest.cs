namespace PunAPI.Contract;

public class PunSetupRespSubmitRequest
{
    public Guid SubmitTypeID { get; set; }
    public string SetupPhrase { get; set; }
    public string ResponsePhrase { get; set; }
}