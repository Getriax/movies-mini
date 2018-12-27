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
