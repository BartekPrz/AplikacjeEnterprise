import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MovieCartComponent } from './movie-cart/movie-cart.component';
import { MovieDetailsComponent } from './movie-details/movie-details.component';

const routes: Routes = [
  { path: '', redirectTo: '/movies', pathMatch: 'full'},
  { path: 'movies', component: MovieCartComponent},
  { path: 'movies/details/:id', component: MovieDetailsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
