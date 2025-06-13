# Netflix Content Analysis using SQL

##  Overview :
This project presents a comprehensive analysis of Netflix's movies and TV shows using SQL. The aim is to derive meaningful insights that address various business-related questions. By exploring content types, release patterns, genres, country contributions, and keyword-based classifications, the analysis provides a data-driven overview of Netflix's content landscape.

---

##  Objectives :
- Analyze the distribution of content types (Movies vs TV Shows).
- Identify the most frequent content ratings.
- Examine content distribution based on release years, countries, and durations.
- Discover trends in content addition over recent years.
- Identify key contributors such as directors and actors.
- Categorize content based on keywords like `kill` and `violence`.

---
## Dataset :
The dataset is sourced from Kaggle and contains comprehensive metadata on Netflix titles, including:
•	Title, Type (Movie or TV Show)
•	Director, Casts, Country
•	Date Added, Release Year, Rating, Duration
•	Listed Genres, Description

## Key Insights :
## 1. Count the Number of Movies vs TV Shows
Query Purpose:
To understand the distribution of content types available on Netflix.
Why it Matters:
This helps identify whether Netflix leans more toward Movies or TV Shows, which may influence content acquisition or marketing strategies.
Insight:
Typically, Netflix has more Movies than TV Shows, indicating a focus on short-format content.

## 2. Find the Most Common Rating for Movies and TV Shows
Query Purpose:
To determine which content ratings (like TV-MA, PG, etc.) are most frequently used.
Why it Matters:
This reveals the platform’s target age demographics (e.g., adults, teens).
Insight:
Ratings such as TV-MA and TV-14 are common, showing Netflix’s appeal to mature audiences.

## 3. List All Movies Released in a Specific Year (e.g., 2020)
Query Purpose:
To extract content based on a release year.
Why it Matters:
Analyzing content from a specific year can help measure production trends, especially around events like the COVID-19 pandemic.
Insight:
The year 2020 saw a large volume of releases, possibly due to the rise in digital consumption during lockdowns.

## 4. Top 5 Countries with the Most Content
Query Purpose:
To find which countries contribute the most content.
Why it Matters:
Identifies Netflix’s key markets and regions of content production.
Insight:
Countries like the USA, India, and the UK dominate, showing where Netflix invests most in content acquisition or production.

## 5. Identify the Longest Movie
Query Purpose:
To find the movie with the highest duration.
Why it Matters:
This helps identify feature-length or special documentary content that may appeal to niche audiences.
Insight:
Documentaries or biopics often have longer durations, indicating more informative or in-depth storytelling.

## 6. Find Content Added in the Last 5 Years
Query Purpose:
To extract newly added content to the platform.
Why it Matters:
Helps understand how actively Netflix updates its library and keeps content fresh.
Insight:
Netflix has added a significant amount of content in recent years, aligning with its rapid global expansion.

## 7. Find All Content by Director 'Rajiv Chilaka'
Query Purpose:
To identify all titles by a specific director.
Why it Matters:
Useful for fans, regional studies, or identifying prolific creators.
Insight:
Rajiv Chilaka is a popular Indian director known for children’s content like Chhota Bheem, contributing to Netflix’s local offerings.

## 8. List All TV Shows with More Than 5 Seasons
Query Purpose:
To find long-running TV series.
Why it Matters:
Longer series often indicate high viewer retention and popularity.
Insight:
Few shows surpass 5 seasons, highlighting the competitive nature of long-term viewer engagement.

## 9. Count the Number of Content Items in Each Genre
Query Purpose:
To find how many titles exist in each genre category.
Why it Matters:
Shows Netflix’s genre diversity and which categories are most supported.
Insight:
Dramas, Comedies, and Documentaries often lead, pointing to broad audience appeal.

## 10. Top 5 Years with Highest Avg Indian Content Release
Query Purpose:
To assess India’s contribution to Netflix content over the years.
Why it Matters:
Highlights how Netflix is investing in regional content.
Insight:
The last few years have seen a sharp rise in Indian content, suggesting strong user growth in India.

## 11. List All Movies That Are Documentaries
Query Purpose:
To filter movies tagged under “Documentaries”.
Why it Matters:
Documentaries reflect educational or awareness-driven content.
Insight:
Netflix has a robust catalog of documentaries, appealing to learners, educators, and socially conscious viewers.

## 12. Find All Content Without a Director
Query Purpose:
To identify content missing key metadata.
Why it Matters:
Missing metadata affects search and recommendation algorithms.
Insight:
Few entries lack director info, possibly due to import errors or uncredited works.

## 13. Count Movies with ‘Salman Khan’ in the Last 10 Years
Query Purpose:
To track the presence of a specific actor over the past decade.
Why it Matters:
This helps understand an actor’s relevance or popularity over time.
Insight:
Salman Khan has consistent appearances, affirming his influence in Indian cinema.

## 14. Top 10 Actors in Indian Movies
Query Purpose:
To find the most frequently featured actors in Indian Netflix content.
Why it Matters:
Shows which celebrities are most associated with Indian Netflix productions.
Insight:
Popular actors often appear repeatedly, helping shape viewer expectations and brand value.

## 15. Categorize Content Based on ‘Kill’ or ‘Violence’
Query Purpose:
To label content as “Good” or “Bad” based on violent keywords in descriptions.
Why it Matters:
Useful for parental filters, content warnings, or mood-based recommendations.
Insight:
A majority of content is categorized as “Good,” indicating broader family-friendly offerings with fewer violence-themed shows.



### Conclusion :
This analysis underscores Netflix's dynamic and diverse content strategy. It highlights how the platform serves a wide audience with content across genres, durations, and global regions. The findings are   particularly useful for content strategists, data analysts, and entertainment researchers looking to understand patterns in digital streaming content. By leveraging SQL-based analysis, the project demonstrates the power of structured queries in drawing actionable business insights from raw entertainment data.






