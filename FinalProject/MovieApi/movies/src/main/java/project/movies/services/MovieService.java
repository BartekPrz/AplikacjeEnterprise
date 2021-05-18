package project.movies.services;

import project.movies.models.Movie;

import java.util.List;

public interface MovieService {

    List<Movie> getAllMovies();

    Movie getMovie(Long id);
}
