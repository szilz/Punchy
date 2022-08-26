import { Component, OnInit } from '@angular/core';
import { Chat } from '../chat';
import { NgForm } from '@angular/forms';
import { HttpClient, HttpClientModule, HttpParams } from '@angular/common/http'

const punchyAPI = 'https://punchyapi.azurewebsites.net/api/Message';
const convAPI = 'https://punchyapi.azurewebsites.net/api/Conversation';
type GUID = string & { isGuid: true };

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit {
  chat: Chat = {
    userInput: "",
    response: ""
  };
  punResponse: any;
  punSetup: any;
  userMessage: any;
  userName: any; //placeholder to send a userName
  convID: any;
  chatHistory: Array<Chat> = [];
  count: number = 0;

  constructor(private http: HttpClient) {

  }

  ngOnInit(): void {
  }

  onSubmit(data: { userInput: any; }) {
    this.chat.userInput = data.userInput;
    this.count += 1;

    this.userMessage = data.userInput;
    let queryParams = new HttpParams();
    queryParams = queryParams.append("userInput", data.userInput);

    this.http.get<IPunSetupRespDto>(punchyAPI, { params: queryParams })
      .subscribe(data => {
        if (data.setupPhrase == null) {
          this.chat.response = data.responsePhrase;
        }
        else {
          this.chat.response = data.setupPhrase + data.responsePhrase;
        }
      });

    //Set delay because typescript runs in parallel
    setTimeout(
      () => {
        this.chatHistory.push(this.chat);
      },
      2500 //miliseconds of the delay
    );
  }

}

interface IPunSetupRespDto {
  setupPhrase: string;
  responsePhrase: string;
}

interface IConversationResponse {
  ConversationID: GUID;
}

