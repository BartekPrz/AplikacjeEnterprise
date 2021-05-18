package project.movies.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import project.movies.models.Movie;
import project.movies.services.MovieService;

import java.util.List;

@Controller
@RequestMapping("/movies")
public class MovieController {

    private final MovieService movieService;

    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping
    @ResponseBody
    public List<Movie> getAllMovies() {
        return movieService.getAllMovies();
    }

    @GetMapping(value = "/{id}")
    @ResponseBody
    public Movie getMovie(@PathVariable("id") long id) {
        return movieService.getMovie(id);
    }
}
