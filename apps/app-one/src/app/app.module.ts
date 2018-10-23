import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { NxModule } from '@nrwl/nx';
import { SharedSampleUiModule } from '@sample-monorepo/shared/sample-ui';
import { Team1SampleLogicModule } from '@sample-monorepo/team1/sample-logic';

@NgModule({
  declarations: [AppComponent],
  imports: [
    BrowserModule,
    NxModule.forRoot(),
    SharedSampleUiModule,
    Team1SampleLogicModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
