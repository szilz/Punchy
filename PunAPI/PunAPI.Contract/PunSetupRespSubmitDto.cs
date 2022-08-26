namespace PunAPI.Contract
{
    public class PunSetupRespSubmitDto
    {
        public Guid PunSetupRespSubmitID { get; set; }
        public string SetupPhrase { get; set; } = null;
        public string ResponsePhrase { get; set; } = null;
        public Guid SubmitTypeID { get; set; }
    }
}
