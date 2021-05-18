import { Injectable } from '@angular/core';
import { Movie } from './Movie';
import {Observable} from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  private moviesApiUrl = 'http://localhost:8080';

  constructor(private http: HttpClient) { }

  getAllMovies(): Observable<Movie[]> {
    const url = `${this.moviesApiUrl}/movies`;
    return this.http.get<Movie[]>(url);
  }

  getMovie(id: number): Observable<Movie> {
    const url = `${this.moviesApiUrl}/movies/${id}`;
    return this.http.get<Movie>(url);
  }

}
