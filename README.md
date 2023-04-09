# Ask IMDb Anything

## Dependencies

Python 3.7+ is required to run this project.  
You can install the required dependencies by running the following command:

    pip install -r requirements.txt

The setup process also has system dependencies that need to be installed.

    curl, gunzip, sqlite3

## Setup

The setup file process will download and unzip the IMDb dataset and create a SQLite database.

### Downloading and unzipping the IMDb dataset

    sh setup.sh

### Creating the SQLite database and importing the IMDb dataset

Create the database and enter the SQLite shell.

    sqlite3 imdb.db

Use mode tabs

    .mode tabs

Import the IMDb dataset.

    .import name.basics.tsv name_basics
    .import title.basics.tsv title_basics
    .import title.principals.tsv title_principals
    .import title.ratings.tsv title_ratings
    .import title.akas.tsv title_akas
    .import title.crew.tsv title_crew
    .import title.episode.tsv title_episode

### Cleanup files

    sh cleanup.sh

## Usage
