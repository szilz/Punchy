using Dapper;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;
using System.Data;

namespace PunAPI.Repositories
{
    public class PunSetupRespSubmitApprovalRepository
    {
        private IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");

        public async Task<List<PunSetupRespSubmitApprovalDto>> Get()
        {
            var punData = await conn.QueryAsync<PunSetupRespSubmitApprovalDto>("select * from PunSetupRespSubmitApproval");
            return punData.ToList();
        }

        public async Task PostAsync(Guid punSetupRespSubmitID, string userName, Guid approvalTypeID)
        {
            //Check to see if pun record from user already exists. If record does not exists, insert
            int inputCount = (int)await conn.ExecuteScalarAsync(@"select count(*) from PunSetupRespSubmitApproval where PunSetupRespSubmitID = @punSetupRespSubmitID and UserName = @userName", new { punSetupRespSubmitID, userName });
            if (inputCount == 0)
            {
                var punData = new PunSetupRespSubmitApproval
                {
                    PunSetupRespSubmitID = punSetupRespSubmitID,
                    UserName = userName,
                    ApprovalTypeID = approvalTypeID
                };
                await conn.ExecuteAsync(@"insert into PunSetupRespSubmitApproval(PunSetupRespSubmitID, UserName, ApprovalTypeID) values (@punSetupRespSubmitID, @userName, @approvalTypeID)", new { punSetupRespSubmitID, userName, approvalTypeID });
            }
            //If pun record from user exists and approvalTypeID is different from the record, update
            else
            {
                await conn.ExecuteAsync(@"update PunSetupRespSubmitApproval set ApprovalTypeID = @approvalTypeId where PunSetupRespSubmitID = @punSetupRespSubmitID and UserName = @userName", new { punSetupRespSubmitID, userName, approvalTypeID });
                //await conn.ExecuteAsync(@"insert into PunSetupRespSubmitApproval(PunSetupRespSubmitID, UserName, ApprovalTypeID) values (@punSetupRespSubmitID, @userName, @approvalTypeID) ON DUPLICATE KEY UPDATE ApprovalTypeID = @approvalTypeID", new { punSetupRespSubmitID, userName, approvalTypeID });
            }
        }
    }
}

