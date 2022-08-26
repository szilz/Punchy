import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ChatpageComponent } from './chatpage/chatpage.component';
import { PunsubmissionComponent } from './punsubmission/punsubmission.component';
import { PunapprovalComponent } from './punapproval/punapproval.component';

const routes: Routes = [

  { path: '', component: ChatpageComponent },
  { path: 'punsubmission', component: PunsubmissionComponent },
  { path: 'punapproval', component: PunapprovalComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
