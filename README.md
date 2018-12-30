## Available online

* [movies](http://netboom.com.pl/movies)
* [comments](http://netboom.com.pl/comments)

## What is it?

It is a netguru recruitment task created wothout any NPM package, with the least code.

## How to use?

### Prerequisites

* Install [docker](https://docs.docker.com/install/#supported-platforms)
* Install [docker-compose](https://docs.docker.com/compose/install/#install-compose)

### Setup

* Clone this repo `git clone git@github.com:Getriax/movies-mini.git`
* Copy env.example `cp env.example .env`
  * DB - mongodb database url
  * KEY - Omdb api key
* Build image `docker-compise build`
* Run container `docker-compise up`
* The application will be running on port **3000**

### API end points

**POST** `/movies` - Add a movie to the database.

* title **String** `required`

**example response**

		{
    "Ratings": [
        {
            "_id": "5b32a05a9e2d031be8e7484d",
            "Source": "Internet Movie Database",
            "Value": "5.8/10",
            "__v": 0
        },
        {
            "_id": "5b32a05a9e2d031be8e7484e",
            "Source": "Rotten Tomatoes",
            "Value": "40%",
            "__v": 0
        },
        {
            "_id": "5b32a05a9e2d031be8e7484f",
            "Source": "Metacritic",
            "Value": "49/100",
            "__v": 0
        }
    ],
    "_id": "5b32a05a9e2d031be8e74853",
    "Title": "2012",
    "Year": 2009,
    "Rated": "PG-13",
    "Released": "2009-11-12T23:00:00.000Z",
    "Runtime": "158 min",
    "Genre": "Action, Adventure, Sci-Fi",
    "Director": "Roland Emmerich",
    "Writer": "Roland Emmerich, Harald Kloser",
    "Actors": "John Cusack, Amanda Peet, Chiwetel Ejiofor, Thandie Newton",
    "Plot": "A frustrated writer struggles to keep his family alive when a series of global catastrophes threatens to annihilate mankind.",
    "Language": "English, French, Tibetan, Mandarin, Russian, Hindi, Portuguese, Latin, Italian, Spanish",
    "Country": "USA",
    "Awards": "5 wins & 21 nominations.",
    "Poster": "https://ia.media-imdb.com/images/M/MV5BMTY0MjEyODQzMF5BMl5BanBnXkFtZTcwMTczMjQ4Mg@@._V1_SX300.jpg",
    "Metascore": 49,
    "imdbRating": 5.8,
    "imdbVotes": 311.171,
    "imdbID": "tt1190080",
    "Type": "movie",
    "DVD": "2010-03-01T23:00:00.000Z",
    "BoxOffice": "$166,112,167",
    "Production": "Sony Pictures/Columbia",
    "Website": "http://www.whowillsurvive2012.com/",
    "Response": true,
    "__v": 0
    }

___
**GET** `/movies` - get movies present in the database.
Optional query params:
* title **String**  `default: none`
	* specify a title to filter by it.
* sort **String** `default: none`
	* sort by any field preseted in the response above.
* order **String**  `default asc`
	* asc or desc values
___
**POST** `/comments` - create a comment for a movie.
* movieId **String** `required`
	* id o a movie to comment
* body **String** `required`
	* the comment text

**example response**

	{
	    "_id": "5b32b00f18b2f31f971e79ae",
	    "movieId": "5b329741eff70918e6cfc39e",
	    "body": "Nice movie",
	    "__v": 0
	}
___
**GET** `/comments` - get all the comments of the movies.

**optional query param**:
* id

___



