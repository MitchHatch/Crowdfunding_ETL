﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/MsdtL8
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- ERD Diagram for ETL Project 2


-- Drop Tables if Existing
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;

-- Create Campaign table
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar NOT NULL,
    description varchar NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar NOT NULL,
    backers_count int NOT NULL,
    country varchar NOT NULL,
    currency varchar NOT NULL,
    launched_date date  NOT NULL,
    end_date date NOT NULL,
    category_id varchar NOT NULL,
    subcategory_id varchar NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id)
);

-- Create Cateogry table
CREATE TABLE category (
    category_id varchar NOT NULL,
    category varchar NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

-- Create Contacts table
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    email varchar NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);

-- Create Subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar NOT NULL,
    subcategory varchar NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);
