-- # Generated using Github Copilot and ChatGPT based on the 
-- # description available at https://www.imdb.com/interfaces/

-- https://datasets.imdbws.com/title.akas.tsv.gz
CREATE TABLE title_akas (
  titleId TEXT NOT NULL,            -- an alphanumeric unique identifier of the title
  ordering INTEGER NOT NULL,        -- a number to uniquely identify rows for a given titleId
  title TEXT NOT NULL,              -- the localized title
  region TEXT,                      -- the region for this version of the title
  language TEXT,                    -- the language of the title
  types TEXT,                       -- Enumerated set of attributes for this alternative title. One or more of the following: "alternative", "dvd", "festival", "tv", "video", "working", "original", "imdbDisplay". New values may be added in the future without warning
  attributes TEXT,                  -- Additional terms to describe this alternative title, not enumerated
  isOriginalTitle INTEGER NOT NULL, -- 0: not original title; 1: original title

  PRIMARY KEY (titleId, ordering)
);

-- https://datasets.imdbws.com/title.basics.tsv.gz
CREATE TABLE title_basics (
  tconst TEXT NOT NULL,       -- alphanumeric unique identifier of the title
  titleType TEXT NOT NULL,    -- the type/format of the title (e.g. movie, short, tvseries, tvepisode, video, etc)
  primaryTitle TEXT NOT NULL, -- the more popular title / the title used by the filmmakers on promotional materials at the point of release
  originalTitle TEXT,         -- original title, in the original language
  isAdult INTEGER,            -- 0: non-adult title; 1: adult title
  startYear INTEGER,          -- represents the release year of a title. In the case of TV Series, it is the series start year
  endYear INTEGER,            -- TV Series end year. ‘\N’ for all other title types
  runtimeMinutes INTEGER,     -- primary runtime of the title, in minutes
  genres TEXT,                -- includes up to three genres associated with the title

  PRIMARY KEY (tconst)
);

-- https://datasets.imdbws.com/title.crew.tsv.gz
-- Contains the director and writer information for all the titles in IMDb.
CREATE TABLE title_crew (
  tconst TEXT NOT NULL, -- alphanumeric unique identifier of the title
  directors TEXT,       -- director(s) of the given title
  writers TEXT,         -- writer(s) of the given title

  PRIMARY KEY (tconst)
);

-- https://datasets.imdbws.com/title.episode.tsv.gz
-- Contains the tv episode information.
CREATE TABLE title_episode (
  tconst TEXT NOT NULL,           -- alphanumeric identifier of episode
  parentTconst TEXT NOT NULL,     -- alphanumeric identifier of the parent TV Series
  seasonNumber INTEGER NOT NULL,  -- season number the episode belongs to
  episodeNumber INTEGER NOT NULL, -- episode number of the tconst in the TV series

  PRIMARY KEY (tconst)
);

-- https://datasets.imdbws.com/title.principals.tsv.gz
-- Contains the principal cast/crew for titles
CREATE TABLE title_principals (
  tconst TEXT NOT NULL,      -- alphanumeric unique identifier of the title
  ordering INTEGER NOT NULL, -- a number to uniquely identify rows for a given titleId
  nconst TEXT NOT NULL,      -- alphanumeric unique identifier of the name/person
  category TEXT NOT NULL,    -- the category of job that person was in
  job TEXT,                  -- the specific job title if applicable, else '\N'
  characters TEXT,           -- the name of the character played if applicable, else '\N'

  PRIMARY KEY (tconst, ordering)
);

-- https://datasets.imdbws.com/title.ratings.tsv.gz
-- Contains the IMDb rating and votes information for titles
CREATE TABLE title_ratings (
  tconst TEXT NOT NULL, -- alphanumeric unique identifier of the title
  averageRating REAL,   -- weighted average of all the individual user ratings
  numVotes INTEGER,     -- number of votes the title has received

  PRIMARY KEY (tconst)
);

-- https://datasets.imdbws.com/name.basics.tsv.gz
-- Contains the following information for names:
CREATE TABLE name_basics (
  nconst TEXT NOT NULL,      -- alphanumeric unique identifier of the name/person
  primaryName TEXT NOT NULL, -- name by which the person is most often credited
  birthYear INTEGER,         -- in YYYY format
  deathYear INTEGER,         -- in YYYY format if applicable, else '\N'
  primaryProfession TEXT,    -- the top-3 professions of the person
  knownForTitles TEXT,       -- titles the person is known for

  PRIMARY KEY (nconst)
);