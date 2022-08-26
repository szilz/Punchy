import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ChatpageComponent } from './chatpage/chatpage.component';
import { PunsubmissionComponent } from './punsubmission/punsubmission.component';

const routes: Routes = [

  { path: '', component: ChatpageComponent },
  { path: 'punsubmission', component: PunsubmissionComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
