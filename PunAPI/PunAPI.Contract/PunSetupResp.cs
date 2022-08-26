namespace PunAPI.Contract;

/*Object for storing the raw data that is received from the dadabase.
 * Each variable reps a column in the dadabase.
 */
public class PunSetupResp
{
    public Guid PunSetupResponseID { get; set; }
    public Guid PunSetupID { get; set; }
    public string SetupPhrase { get; set; }
    public Guid PunSetupKeywordID { get; set; }
    public string PunSetupWord { get; set; }
    public Guid PunResponseID { get; set; }
    public string ResponsePhrase { get; set; }
    public Guid PunResponseKeywordID { get; set; }
    public string PunResponseWord { get; set; }
}