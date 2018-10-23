import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { NxModule } from '@nrwl/nx';
import { SharedSampleUiModule } from '@sample-monorepo/shared/sample-ui';

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule, NxModule.forRoot(), SharedSampleUiModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
