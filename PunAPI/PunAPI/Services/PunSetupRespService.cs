using PunAPI.Contract;
using PunAPI.Repositories;

namespace PunAPI.Services;

public class PunSetupRespService
{
    private readonly PunSetupRespRepository _repository;

    //Create constructor of Repository object to communicate with Repository class, where database calls are made
    public PunSetupRespService()
    {
        _repository = new PunSetupRespRepository();
    }

    //Collects data from repository class and changes the entities to PunSetupRespDto from PunSetupResp objects
    public async Task<List<PunSetupRespDto>> GetPunSetupResponseByKeywords(List<string> setupKeyWord, List<string> responseKeyWord)
    {
        var rawResult = await _repository.GetPunSetupResponseByKeywords(setupKeyWord, responseKeyWord);
        var IDListOfReturnDtoID = new List<Guid>();
        var returnList = new List<PunSetupRespDto>();
        var index = 0;
        //loop over and change entity to Dto
        //Use ID to check if there are multiple setup or response keywords. Add to list
        for(var i = 0; i < rawResult.Count; i++)
        {
            if(!(IDListOfReturnDtoID.Contains(rawResult[i].PunSetupResponseID)))
            {
                IDListOfReturnDtoID.Add(rawResult[i].PunSetupResponseID);
                var temp = new PunSetupRespDto();
                {
                    temp.PunSetupResponseID = rawResult[i].PunSetupResponseID;
                    temp.SetupPhrase = rawResult[i].SetupPhrase;
                    temp.ResponsePhrase = rawResult[i].ResponsePhrase;
                    temp.ResponseKeywords.Add(rawResult[i].PunResponseWord);
                    temp.SetupKeywords.Add(rawResult[i].PunSetupWord);
                };
                returnList.Add(temp);
            }
            //ID already exists within list, so add whichever keyword differs to the list element within the Dto object
            else
            {
                index = IDListOfReturnDtoID.IndexOf(rawResult[i].PunSetupResponseID);
                //Adds to Response Keyword list, if response words don't match for same punsetuprespID
                if (!(returnList[index].ResponseKeywords.Contains(rawResult[i].PunResponseWord)))
                {
                    returnList[index].ResponseKeywords.Add(rawResult[i].PunResponseWord);
                }
                //Adds to Setup Keyword list, if setup words don't match for same punsetuprespID
                else if (!(returnList[index].SetupKeywords.Contains(rawResult[i].PunSetupWord)))
                {
                    returnList[index].SetupKeywords.Add(rawResult[i].PunSetupWord);
                }
            }
        }

        return returnList;
    }

    //Collects id from repository class and changes entity to PunSetupRespDto object from PunSetupResp object
    public async Task<PunSetupRespDto> GetPunSetupResponseByPunSetupResponseID(Guid id)
     {
        var response = await _repository.GetPunSetupResponseByPunSetupResponseID(id);
        var returnDto = new PunSetupRespDto();
        //change entity to Dto
        //Loop through list and condense (compare ids, verify they're the same, compare Setup Keyword and Response Keyword
        //If same, only add the one, if different, add both to list variable within the Dto object
        if(response.Count > 1)
        {
            for(var i = 0; i < response.Count - 1; i++)
            {
                if (response[i].PunSetupResponseID.Equals(response[i+1].PunSetupResponseID))
                {
                    if (!(response[i].PunSetupWord.Equals(response[i+1].PunSetupWord)))
                    {
                        returnDto.SetupKeywords.Add(response[i].PunSetupWord);
                        returnDto.SetupKeywords.Add(response[i + 1].PunSetupWord);
                    }
                    else
                    {
                        returnDto.SetupKeywords.Add(response[i].PunSetupWord);
                    }
                    if (!(response[i].PunResponseWord.Equals(response[i + 1].PunResponseWord)))
                    {
                        returnDto.ResponseKeywords.Add(response[i].PunResponseWord);
                        returnDto.ResponseKeywords.Add(response[i + 1].PunResponseWord);
                    }
                    else
                    {
                        returnDto.ResponseKeywords.Add(response[i].PunResponseWord);
                    }
                }
            }
        }
        //Else, response list is size 1, add the single setup/response words to Dto list
        else
        {
            returnDto.ResponseKeywords.Add(response[0].PunResponseWord);
            returnDto.SetupKeywords.Add(response[0].PunSetupWord);
        }
        //Transfer rest of data to Dto object
        returnDto.PunSetupResponseID = response[0].PunSetupResponseID;
        returnDto.PunSetupResponseID = response[0].PunSetupResponseID;
        returnDto.SetupPhrase = response[0].SetupPhrase;
        returnDto.ResponsePhrase = response[0].ResponsePhrase;
        return returnDto;
     }

}