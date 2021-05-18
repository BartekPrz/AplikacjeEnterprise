import { Component, OnInit } from '@angular/core';
import { Cart } from '../Cart';
import { CartService } from '../cart.service';
import { Movie } from '../Movie';
import { MovieService } from '../movie.service';

@Component({
  selector: 'app-movie-cart',
  templateUrl: './movie-cart.component.html',
  styleUrls: ['./movie-cart.component.css']
})
export class MovieCartComponent implements OnInit {

  ALL_CATEGORIES = "ALL_CATEGORIES";
  movies!: Movie[];
  fetchedMovies!: Movie[];
  selectedCategory: any;
  categories!: String[];
  cart!: Cart;

  constructor(private movieService: MovieService, private cartService: CartService) { }

  ngOnInit(): void {
    this.getAllFilms();
    this.getCart();
  }

  getAllFilms(): void {
    this.movieService.getAllMovies().subscribe(movies => {
      this.movies = movies
      this.fetchedMovies = movies;
      this.createMoviesCategories();
    });
  }

  getCart(): void {
    this.cartService.getCart().subscribe(cart => {
      this.cart = cart
      console.log("Cart from get: ");
      console.log(this.cart);
    });
  }

  createMoviesCategories(): void {
    const categoriesSet = new Set(this.movies.map(movie => movie.category));
    this.categories = Array.from(categoriesSet);
    this.categories.unshift(this.ALL_CATEGORIES);
    this.selectedCategory = this.ALL_CATEGORIES;
  }

  changeCategory(): void {
    if (this.selectedCategory === this.ALL_CATEGORIES) {
      this.fetchedMovies = this.movies;
    } else {
      this.fetchedMovies = this.movies.filter(movie => {
        return movie.category === this.selectedCategory
      });
    }
  }

  addMovieToCart(id: number): void {
    this.cartService.addMovieToCart(id).subscribe(cart => {
      this.cart = cart
      console.log("Cart from add: ");
      console.log(this.cart);
      this.getCart();
    });
  }
}
