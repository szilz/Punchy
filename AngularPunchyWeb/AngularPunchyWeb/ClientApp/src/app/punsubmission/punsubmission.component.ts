import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';


const convAPI = 'https://punchyapi.azurewebsites.net/api/Conversation';
const punSubmitAPI = 'https://punchyapi.azurewebsites.net/api/PunSetupRespSubmit';
const submitTypeAPI = 'https://punchyapi.azurewebsites.net/PunSetupRespSubmit/Type'


type GUID = string & { isGuid: true };

export class Message {
  constructor(public author: string, public content: string) { }
}

@Component({
  selector: 'app-punsubmission',
  templateUrl: './punsubmission.component.html',
  styleUrls: ['./punsubmission.component.css']
})

// SUBMIT PUNS FORM PAGE
export class PunsubmissionComponent implements OnInit {
  title = 'angular-punchy-web';
  punResponse: any;
  punSetup: any;
  userMessage: any;
  userName: any; //placeholder to send a userName
  convID: any;
  count: number = 0;
  submitTypes: Array<ISubmitType> = [];

  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    let body = { userName: this.userName };
    this.http.post<IConversationResponse>(convAPI, body).subscribe((data) => { this.convID = data.ConversationID });

    //Call api/SubmitType and store list
    this.http.get<Array<ISubmitType>>(submitTypeAPI).subscribe((data) => { this.submitTypes = data });
  }
  /*  Placeholder when pun is submitted*/
  onPunSubmit(data: { userPunSetup: any, userPunResp: any }) {
    let body = {
      SubmitTypeID: this.submitTypes[1].submitTypeID,
      SetupPhrase: data.userPunSetup,
      ResponsePhrase: data.userPunResp,
    };

    this.http.post(punSubmitAPI, body).subscribe(/*data => {}*/);

  }
}

interface IConversationResponse {
  ConversationID: string;
}

interface ISubmitType {
  submitTypeID: GUID;
  submitTypeName: string;
}
