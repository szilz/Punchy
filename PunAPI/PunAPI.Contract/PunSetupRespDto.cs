namespace PunAPI.Contract;

public class PunSetupRespDto
{
    //Add PunSetupRespID to keep track of records
    public Guid PunSetupResponseID { get; set; }
    public string? SetupPhrase { get; set; }
    public string ResponsePhrase { get; set; } = null!;
    public List<string> ResponseKeywords { get; set; } = new List<string>();
    public List<string> SetupKeywords { get; set; } = new List<string>();
}
