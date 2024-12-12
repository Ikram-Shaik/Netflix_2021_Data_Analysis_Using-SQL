# Netflix Titles SQL Analysis

## Project Overview
This project focuses on analyzing a dataset of Netflix titles using SQL to derive meaningful insights and answer various queries. The analysis demonstrates proficiency in SQL operations such as filtering, aggregation, string manipulation, window functions, and stored procedures. The dataset contains attributes like title, type, director, cast, country, rating, duration, and more, offering a rich source for data exploration and analysis.

## Dataset Description
The dataset used for this project includes the following columns:
- **show_id**: Unique identifier for each title.
- **type**: Indicates if the title is a Movie or TV Show.
- **title**: Name of the title.
- **director**: Director of the title.
- **cast**: Cast of the title.
- **country**: Country of origin.
- **date_added**: Date the title was added to Netflix.
- **release_year**: Year of release.
- **rating**: Content rating.
- **duration**: Duration of the movie or number of seasons for TV Shows.
- **listed_in**: Genres/categories the title belongs to.
- **description**: Brief description of the title.

## Questions Solved and Approach
1. **List all titles with their show_id, title, and type.**
   - A simple `SELECT` query retrieves all titles with specified columns.

2. **Display all columns for titles that are Movies.**
   - The query uses a `WHERE` clause to filter records where `type = 'Movie'`.

3. **List TV shows that were released in the year 2021.**
   - The query filters records where `type = 'TV Show'` and `release_year = 2021`.

4. **Find all titles where the description contains the word 'family'.**
   - The query uses the `LIKE` operator to search for 'family' in the `description` column.

5. **Count the total number of titles in the dataset.**
   - The query uses the `COUNT(*)` function to calculate the total number of records.

6. **Find the average duration of all movies (consider 400 minutes per season for TV Shows).**
   - The query uses conditional logic to convert `duration` to minutes for Movies and TV Shows.

7. **List the top 5 latest titles based on the date_added, sorted in descending order.**
   - The query sorts records by `date_added` in descending order and limits the output to 5 rows.

8. **List all titles along with the number of other titles by the same director.**
   - The query uses a subquery to count titles grouped by `director` and joins it with the main dataset.

9. **Find the total number of titles for each country.**
   - The query groups records by `country` and uses the `COUNT(*)` function.

10. **Categorize titles into Family, Kids, and Adult based on their rating using a CASE statement.**
    - The query uses a `CASE` statement to define categories based on the `rating` column.

11. **Add a new column `title_length` to the titles table to calculate the length of each title.**
    - A query updates the table to include the length of the `title` using string functions.

12. **Find the title with the longest duration in minutes.**
    - The query calculates the duration in minutes and retrieves the title with the maximum value.

13. **Create a view named `RecentTitles` for titles added in the last 30 days.**
    - A view is created to simplify access to recent titles using `CREATE VIEW`.

14. **Rank titles based on their release_year within each country using a window function.**
    - The query uses the `RANK()` window function partitioned by `country` and ordered by `release_year`.

15. **Calculate the cumulative count of titles added each month sorted by date_added.**
    - The query uses a window function `SUM()` to calculate cumulative counts.

16. **Write a stored procedure to update the rating of a title given its show_id and new rating.**
    - The procedure dynamically updates the `rating` column for the specified `show_id`.

17. **Find the country with the highest average rating for titles.**
    - The query uses subqueries to calculate average ratings grouped by `country` and identifies the maximum.

18. **Find pairs of titles from the same country where one title has a higher rating than the other.**
    - The query performs a self-join on the dataset and compares ratings within the same country.

## Tools and Technologies Used
- **Database Management System**: MySQL
- **Query Language**: SQL
- **Dataset Source**: Netflix titles dataset

## How to Run the Project
1. Import the dataset into a MySQL database.
2. Execute the `CREATE TABLE` command to define the schema.
3. Run the queries or stored procedures provided in this project.
4. Analyze the results to gain insights into Netflix's content.

## Conclusion
This project highlights the use of SQL for data exploration and analysis on a structured dataset. The queries address various analytical needs, such as filtering, ranking, aggregations, and dynamic updates, providing actionable insights into Netflix's content library.

## Author
- **Ikram Shaik**
