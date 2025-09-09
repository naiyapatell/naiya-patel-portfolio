-- Create Database
CREATE DATABASE naiyasp2_NETFLIX;
USE naiyasp2_NETFLIX;

-- Account Table
CREATE TABLE Account (
    account_ID VARCHAR(20) NOT NULL UNIQUE,
    account_email VARCHAR(100),
    account_password VARCHAR(20),
    account_phoneNum VARCHAR(15),
    account_subscription_type CHAR(30),
    account_member_since DATE,
    PRIMARY KEY (account_ID)
);

-- Payment Table
CREATE TABLE Payment (
    payment_ID VARCHAR(20) PRIMARY KEY,
    payment_method CHAR(50),
    payment_date DATE,
    payment_amount FLOAT(4),
    payment_status CHAR(20),
    payment_billing_address VARCHAR(500),
    account_ID VARCHAR(20),
    FOREIGN KEY (account_ID) REFERENCES Account(account_ID)
);

-- Profile Table
CREATE TABLE Profile (
    profile_ID VARCHAR(20) NOT NULL UNIQUE,
    profile_name CHAR(50),
    profile_avatar CHAR(20),
    profile_downloads INT,
    account_ID VARCHAR(20),
    PRIMARY KEY (profile_ID),
    FOREIGN KEY (account_ID) REFERENCES Account(account_ID)
);

-- Watch History
CREATE TABLE Watch_History (
    watchHist_ID VARCHAR(20) NOT NULL UNIQUE,
    watchHist_rating INT,
    watchHist_completion_status FLOAT(2),
    series_ID VARCHAR(20),
    movie_ID VARCHAR(20),
    profile_ID VARCHAR(20),
    PRIMARY KEY (watchHist_ID),
    FOREIGN KEY (series_ID) REFERENCES TV_Series(series_ID),
    FOREIGN KEY (movie_ID) REFERENCES Movies(movie_ID),
    FOREIGN KEY (profile_ID) REFERENCES Profile(profile_ID)
);

-- Game History
CREATE TABLE Game_History (
    game_ID VARCHAR(20),
    profile_ID VARCHAR(20),
    game_level INT,
    game_high_score INT,
    game_total_time INT,
    PRIMARY KEY (game_ID, profile_ID),
    FOREIGN KEY (game_ID) REFERENCES Game(game_ID),
    FOREIGN KEY (profile_ID) REFERENCES Profile(profile_ID)
);

-- Game Table
CREATE TABLE Game (
    game_ID VARCHAR(20) NOT NULL UNIQUE,
    game_name CHAR(50),
    game_type CHAR(50),
    game_release DATE,
    game_rating INT,
    PRIMARY KEY (game_ID)
);

-- Movies Table
CREATE TABLE Movies (
    movie_ID VARCHAR(20) NOT NULL UNIQUE,
    movie_name CHAR(50),
    movie_duration INT,
    movie_main_genre CHAR(20),
    movie_language CHAR(20),
    movie_production_company CHAR(50),
    PRIMARY KEY (movie_ID)
);

-- TV Series Table
CREATE TABLE TV_Series (
    series_ID VARCHAR(20) NOT NULL UNIQUE,
    series_name CHAR(50),
    series_seasons INT,
    series_episodes INT,
    series_main_genre CHAR(20),
    series_language CHAR(20),
    series_production_company CHAR(50),
    PRIMARY KEY (series_ID)
);

-- Production Company Table
CREATE TABLE Production_Company (
    company_ID VARCHAR(20),
    company_name CHAR(100),
    company_number_titles INT,
    company_country CHAR(100),
    PRIMARY KEY (company_ID)
);

-- Series Contract
CREATE TABLE Series_Contract (
    company_ID VARCHAR(20),
    series_ID VARCHAR(20),
    contract_start_date DATE,
    contract_end_date DATE,
    contract_price FLOAT(2),
    PRIMARY KEY (company_ID, series_ID),
    FOREIGN KEY (company_ID) REFERENCES Production_Company(company_ID),
    FOREIGN KEY (series_ID) REFERENCES TV_Series(series_ID)
);

-- Movie Contract
CREATE TABLE Movie_Contract (
    company_ID VARCHAR(20),
    movie_ID VARCHAR(20),
    contract_start_date DATE,
    contract_end_date DATE,
    contract_price FLOAT(2),
    PRIMARY KEY (company_ID, movie_ID),
    FOREIGN KEY (company_ID) REFERENCES Production_Company(company_ID),
    FOREIGN KEY (movie_ID) REFERENCES Movies(movie_ID)
);

-- Game Contract
CREATE TABLE Game_Contract (
    company_ID VARCHAR(20),
    game_ID VARCHAR(20),
    contract_start_date DATE,
    contract_end_date DATE,
    contract_price FLOAT(2),
    PRIMARY KEY (company_ID, game_ID),
    FOREIGN KEY (company_ID) REFERENCES Production_Company(company_ID),
    FOREIGN KEY (game_ID) REFERENCES Game(game_ID)
);
