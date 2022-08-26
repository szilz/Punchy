using Dapper;
using Microsoft.Data.SqlClient;
using PunAPI.Contract;
using System.Data;

namespace PunAPI.Repositories
{
    public class ApprovalTypeRepository
    {
        public async Task<List<ApprovalType>> Get()
        {
            using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
            var punData = await conn.QueryAsync<ApprovalType>("select * from ApprovalType");
            return punData.ToList();
        }
    }
}
