# Project Report: Automated SQL Feed Processing and Comparison
## Project Title
Automated Data Feed Testing, Deduplication, and Comparison using PostgreSQL
## Objective
The primary objective of this project is to simulate real-time data ingestion, identify and remove duplicate entries, and compare datasets across multiple feeds using PostgreSQL. The automation of data generation, validation, and comparison processes ensures robust testing and clean reporting for feed-based systems.
## Dataset details
The project involves three synthetic data feeds:
•	 feed_1 – Contains 10 columns and 10 rows.
•	 feed_2 – Contains 15 columns and 15 rows, including some duplicates.
•	 feed_3 – Contains 20 columns and 20 rows, including some duplicates.
The common fields across feeds are: name, email, phone, city, state, country, age, status, comments.
## Requirement 1:- Generate Random Input Data
I started by creating three feed tables with varying schema sizes. I used the following structure for feed_1
I then populated them with realistic random data using INSERT statements. I intentionally introduced duplicates in feed_2 and feed_3.
## Requirement 2:-Automate Feed Generation
To avoid manual data insertion each time, I created a stored procedure called populate_feed(feed_name, row_count) that dynamically inserts random rows into the selected feed.
This helped streamline the data generation process.
## Requirement 3:- – Identify Duplicates
To identify duplicates, I wrote the following query:

This helped me locate repeated entries in feed_2 and similarly for feed_3.
## Requirement 4:-Write Duplicate Records to Output
I created output tables to store duplicate records for analysis. The query I used was:

## Requirement 5:-Replace Duplicates with Unique Rows
Next, I developed a procedure using ROW_NUMBER() and CTEs to retain only the first occurrence of a record and remove the rest:

## Requirement 6:– Execute and Verify Duplication Cleanup
After cleaning, I ran COUNT(*) queries grouped by the key fields to verify no duplicates remained in feed_2 and feed_3.
## Requirement 7:-
I created a comparison table using LEFT JOINs to compare feed_1 with feed_2 and feed_3 based on name, email, and phone. Here is the query:







