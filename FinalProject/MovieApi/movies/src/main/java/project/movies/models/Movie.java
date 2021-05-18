package project.movies.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table
@Getter
@Setter
public class Movie implements Serializable {

    @Id
    private Long id;
    private String title;
    private String category;
    private Integer year;
    private String cast;
    private String director;
    private String story;
    private Double price;
}
