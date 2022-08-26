using Dapper;
using Microsoft.Data.SqlClient;
using PunAPI.Common;
using PunAPI.Contract;
using System.Data;

namespace PunAPI.Repositories;

public class PunSetupRespRepository
{
    //Makes call to database and creates tables (using DataTable class created in List extensions class)
    //Returns the tables as a list of PunSetupResp objects
    public async Task<List<PunSetupResp>> GetPunSetupResponseByKeywords(List<string> setupKeyWord, List<string> responseKeyWord)
    {
        DataTable setupDataTable = setupKeyWord.ToDataTable("Word");
        DataTable responseDataTable = responseKeyWord.ToDataTable("Word");
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetupResp>("getPunSetupResponse", new
        {
            PunSetupWordTable = setupDataTable.AsTableValuedParameter("WORDLIST"),
            PunResponseWordTable = responseDataTable.AsTableValuedParameter("WORDLIST")
        }, commandType: CommandType.StoredProcedure);
        return punData.ToList();
    }

    //Makes call to database and makes service call. Takes data from first "column" in service call (In this case, [psr].PunSetupResponseID
    //Returns PunSetupResponseID as PunSetupResp object
   public async Task<List<PunSetupResp>> GetPunSetupResponseByPunSetupResponseID(Guid id)
    {
        using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
        var punData = await conn.QueryAsync<PunSetupResp>("dbo.getPunSetupRespByID", new { id }, 
            commandType: CommandType.StoredProcedure);
        return punData.ToList();
    }
}