import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule} from '@angular/forms';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { PunsubmissionComponent } from './punsubmission/punsubmission.component';
import { NavbarComponent } from './navbar/navbar.component';
import { ChatpageComponent } from './chatpage/chatpage.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { AppRoutingModule } from './app-routing.module';
import { PunapprovalComponent } from './punapproval/punapproval.component';

@NgModule({
  declarations: [
    AppComponent,
    PunsubmissionComponent,
    NavbarComponent,
    ChatpageComponent,
    PunapprovalComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatButtonModule,
    MatIconModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
