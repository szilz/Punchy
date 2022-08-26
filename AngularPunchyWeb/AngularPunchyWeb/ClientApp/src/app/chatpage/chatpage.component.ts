import { Component, OnInit, ElementRef, ViewChild } from '@angular/core';
import { HttpClient, HttpClientModule, HttpParams } from '@angular/common/http';

const punchyAPI = 'https://punchyapi.azurewebsites.net/api/Message';
const convAPI = 'https://punchyapi.azurewebsites.net/api/Conversation';
const submitTypeAPI = 'https://punchyapi.azurewebsites.net/PunSetupRespSubmit/Type'

type GUID = string & { isGuid: true };

type chatMessage = {
  type: string;
  content: string
}

export class Message {
  constructor(public author: string, public content: string) { }
}

@Component({
  selector: 'app-chatpage',
  templateUrl: './chatpage.component.html',
  styleUrls: ['./chatpage.component.css']
})

//CHAT INTERFACE PAGE
export class ChatpageComponent implements OnInit {
  title = 'angular-punchy-web';
  punResponse: any;
  punSetup: any;
  userMessage: any;
  userName: any; //placeholder to send a userName
  convID: any;
  punchystart = new Message('bot', 'Talk to Punchy, get punched in the face with some puns!')
  chatMessages: Array<Message> = [this.punchystart]
  count: number = 0;
  submitTypes: Array<ISubmitType> = [];
  @ViewChild("messageContainer") msgContainer!: ElementRef;

  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    //Call api/Conversation upon opening website
    let body = { userName: this.userName };
    this.http.post<IConversationResponse>(convAPI, body).subscribe((data) => { this.convID = data.ConversationID });

    //Call api/SubmitType and store list
    this.http.get<Array<ISubmitType>>(submitTypeAPI).subscribe((data) => { this.submitTypes = data });
  }

  ngAfterViewChecked() {
    this.msgContainer.nativeElement.scrollTop = this.msgContainer.nativeElement.scrollHeight;
  }

  onSubmit(data: { userInput: any; }) {
    this.count += 1;
    const temp = new Message('user', data.userInput);
    this.chatMessages.push(temp);
    let queryParams = new HttpParams();
    queryParams = queryParams.append("userInput", data.userInput);

    this.http.get<IPunSetupRespDto>(punchyAPI, { params: queryParams })
      .subscribe(data => {
        if (data.setupPhrase == null) {
          const tempBot = new Message('bot', data.responsePhrase);
          this.chatMessages.push(tempBot);
        }
        else {
          const tempBot = new Message('bot', data.setupPhrase + data.responsePhrase);
          this.chatMessages.push(tempBot);
        }
        this.count += 1;
      });

    //Set delay because typescript runs in parallel
    setTimeout(
      () => {
        // update html after timeout
        let myContainer = document.getElementById('chatHistory') as HTMLDivElement;

      },
      3000 //miliseconds of the delay
    );
  }

}

interface IPunSetupRespDto {
  setupPhrase: string;
  responsePhrase: string;
}

interface IConversationResponse {
  ConversationID: string;
}

interface ISubmitType {
  submitTypeID: GUID;
  submitTypeName: string;
}
