namespace PunAPI.Contract;

public class ReactionRequest
{
    public Guid ReactionID { get; set; }
    public Guid ConversationID { get; set; }
    public Guid? PunSetupID { get; set; }
    public Guid PunRespID { get; set; }
    public Guid ReactionTypeID { get; set; }

}