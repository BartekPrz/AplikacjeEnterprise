package project.movies.models;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
public class CartAPI {
    private Set<Movie> movies = new HashSet<>();
    private Double price = 0.0;
}
