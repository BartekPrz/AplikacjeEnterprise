export class Movie {

    id: number;
    title: string;
    category: string;
    year: number;
    cast: string;
    director: string;
    story: string;
    price: number;

    constructor(id: number, title: string, category: string, year: number, cast: string, director: string, story: string, price: number) {
        this.id = id;
        this.title = title;
        this.category = category;
        this.year = year;
        this.cast = cast;
        this.director = director;
        this.story = story;
        this.price = price;
    }
}