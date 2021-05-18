import { Movie } from "./Movie";

export class Cart {

    movies: Movie[];
    price: number;

    constructor() {
        this.movies = [];
        this.price = 0;
    }
}