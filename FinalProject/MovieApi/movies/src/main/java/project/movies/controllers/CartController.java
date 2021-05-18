package project.movies.controllers;

import org.springframework.web.bind.annotation.*;
import project.movies.models.Cart;
import project.movies.models.CartAPI;
import project.movies.models.Movie;
import project.movies.services.MovieService;

import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/cart")
public class CartController {

    private final Cart cart;

    private final MovieService movieService;

    public CartController(Cart cart, MovieService movieService) {
        this.cart = cart;
        this.movieService = movieService;
    }

    @GetMapping
    public CartAPI getCart() {
        return writeCartAsJson();
    }

    @PostMapping(value = "/add/{id}")
    public CartAPI addMovie(@PathVariable("id") long id) {
        addMovieToCart(movieService.getMovie(id));
        return writeCartAsJson();
    }

    @PostMapping(value = "/delete/{id}")
    public CartAPI removeMovie(@PathVariable("id") long id) {
        deleteMovieFromCart(movieService.getMovie(id));
        return writeCartAsJson();
    }

    @PostMapping(value = "/clear")
    public CartAPI clearCart() {
        cart.getMovies().clear();
        cart.setPrice(0.0);
        return writeCartAsJson();
    }

    private void addMovieToCart(Movie movie) {
        Set<Movie> movies = cart.getMovies();
        if (movies.stream().noneMatch(movieFromMovies -> movieFromMovies.getId().equals(movie.getId()))) {
            Double price = cart.getPrice();
            movies.add(movie);

            cart.setMovies(movies);
            cart.setPrice(price + movie.getPrice());
        }
    }

    private void deleteMovieFromCart(Movie movie) {
        Set<Movie> movies = cart.getMovies();
        if (movies.stream().anyMatch(movieFromMovies -> movieFromMovies.getId().equals(movie.getId()))) {
            Double price = cart.getPrice();

            cart.setMovies(movies.stream().filter(movieFromMovies -> !movieFromMovies.getId().equals(movie.getId())).collect(Collectors.toSet()));
            cart.setPrice(price - movie.getPrice());
        }
    }

    private CartAPI writeCartAsJson() {
        CartAPI cartAPI = new CartAPI();
        cartAPI.setMovies(cart.getMovies());
        cartAPI.setPrice(cart.getPrice());

        return cartAPI;
    }
}
