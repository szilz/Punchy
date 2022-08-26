import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

type GUID = string & { isGuid: true };
var i = 0;
//creating a class that represents object of type PunSubmissions
export class PunSubmissions {
  constructor(
    public punSetupRespSubmitID: GUID,
    public setupPhrase: string,
    public responsePhrase: string,
    public submitTypeID: GUID
  ) { }

}

@Component({
  selector: 'app-punapproval',
  templateUrl: './punapproval.component.html',
  styleUrls: ['./punapproval.component.css']
})
export class PunapprovalComponent implements OnInit {
  punsubmissions: PunSubmissions[] | undefined; //holds an array of PunSubmissions
  unapprovedpuns: PunSubmissions[] = []; //holds an array of unapproved pun submissions
  approvedpuns: PunSubmissions[] = []; //holds an array of approved pun submissions

  //use HTTP in our punapproval class; declare it as a dependency in the constructor
  //http is a local variable we can use to refer to an instance of HttpClient
  constructor(private http: HttpClient) { }

  ngOnInit(): void {
    //call getPunSubmissions() method in ngOnInit so that when this component loads, it's going to execute this method
    this.getPunSubmissions();
    this.splitApprovedUnapprovedPuns();
  }

  getPunSubmissions() {
    this.http.get<PunSubmissions[]>('https://punchyapi.azurewebsites.net/api/PunSetupRespSubmit').subscribe(
      data => {
        console.log(data); //should return an array of PunSubmissions objects onto the console
        this.punsubmissions = data;
      }//response --> returns the PunSubmissions objects
    );
  }

  splitApprovedUnapprovedPuns() {
    //check the response and match the unapproved ids to one column and approved ids to another column
    this.http.get<PunSubmissions[]>('https://punchyapi.azurewebsites.net/api/PunSetupRespSubmit').subscribe(
      data => {
        data.forEach(element => {
          if (element.submitTypeID == "5fd58eae-23cb-4a87-8c55-d20ef4bc8f4e") { //GUID value represents the submitTypeID for unapproved puns
            this.unapprovedpuns.push(data[i]);
          }
          i += 1;
        });
        i = 0; //reset counter
      });
    this.http.get<PunSubmissions[]>('https://punchyapi.azurewebsites.net/api/PunSetupRespSubmit').subscribe(
      data => {
        data.forEach(element => {
          if (element.submitTypeID == "d6b1e7dc-d56a-4463-9afd-90da316eb208") { //GUID value represents the submitTypeID for approved puns
            this.approvedpuns.push(data[i]);
          }
          i += 1;
        });
      });
  }

}
