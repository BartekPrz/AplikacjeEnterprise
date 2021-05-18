import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MovieCartComponent } from './movie-cart/movie-cart.component';
import { MovieService } from './movie.service';
import { HttpClientModule } from '@angular/common/http';
import { MovieDetailsComponent } from './movie-details/movie-details.component';
import { CartService } from './cart.service';

@NgModule({
  declarations: [
    AppComponent,
    MovieCartComponent,
    MovieDetailsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [MovieService, CartService],
  bootstrap: [AppComponent]
})
export class AppModule { }
