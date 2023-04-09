#!/bin/sh

curl https://datasets.imdbws.com/name.basics.tsv.gz -o name.basics.tsv.gz
gunzip name.basics.tsv.gz

curl https://datasets.imdbws.com/title.basics.tsv.gz -o title.basics.tsv.gz
gunzip title.basics.tsv.gz

curl https://datasets.imdbws.com/title.principals.tsv.gz -o title.principals.tsv.gz
gunzip title.principals.tsv.gz

curl https://datasets.imdbws.com/title.ratings.tsv.gz -o title.ratings.tsv.gz
gunzip title.ratings.tsv.gz

curl https://datasets.imdbws.com/title.akas.tsv.gz -o title.akas.tsv.gz
gunzip title.akas.tsv.gz

curl https://datasets.imdbws.com/title.crew.tsv.gz -o title.crew.tsv.gz
gunzip title.crew.tsv.gz

curl https://datasets.imdbws.com/title.episode.tsv.gz -o title.episode.tsv.gz
gunzip title.episode.tsv.gz
