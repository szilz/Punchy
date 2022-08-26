import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { AbstractControl, FormBuilder, FormControl, FormGroup } from '@angular/forms';

const punchyBotAPI = 'https://punchyapi.azurewebsites.net/api/Message';
type PunResponse = {
  pun: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  title = 'PunchyBot';
  public inputForm: FormGroup;
  chatinput: string = "";
  constructor(private formBuilder: FormBuilder) {
    this.inputForm = this.formBuilder.group({
      input: ''
    });
  }
  clickme() {
    this.chatinput = this.inputForm.get('input')?.value;
    console.log('it does nothing', this.chatinput);
    const fetch = require('node-fetch');
    fetch("https://punchyapi.azurewebsites.net/api/Message?userInput=money", { mode: "no-cors" }).then(function (response: any) { return response; }).then(function (json: any) { console.log(json); });

    ;
    //.then((result: { text: () => any; }) => result.text()).then((textformat: any) => console.log(textformat));
    //console.log(this.result);
  }
}
