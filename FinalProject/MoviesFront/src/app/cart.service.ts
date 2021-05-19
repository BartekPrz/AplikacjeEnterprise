import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Cart } from './Cart';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  private cartApiUrl = "/cart";

  constructor(private http: HttpClient) { }

  getCart(): Observable<Cart> {
    return this.http.get<Cart>(this.cartApiUrl);
  }

  addMovieToCart(id: number): Observable<Cart> {
    const url = `${this.cartApiUrl}/add/${id}`;
    return this.http.post<Cart>(url, {});
  }

  removeMovieFromCart(id: number): Observable<Cart> {
    const url = `${this.cartApiUrl}/delete/${id}`;
    return this.http.post<Cart>(url, {})
  }

  clearCart(): Observable<Cart> {
    const url = `${this.cartApiUrl}/clear`;
    return this.http.post<Cart>(url, {});
  }

}
