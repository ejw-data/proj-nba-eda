# proj-nba-eda

Author:  Erin James Wills, ejw.data@gmail.com  

![Tableau Banner](./images/nba-tableau.png)  
<cite>Photo by <a href="https://unsplash.com/@markusspiske?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Markus Spiske</a> on <a href="https://unsplash.com/s/photos/basketball?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></cite>

<br>

## Overview  
<hr>  
NBA exploratory data analysis project with Pandas and Tableau 

<br>

## Technologies    
*  Tableau

<br>

## Data Source  

*  NBA Revenue - https://runrepeat.com/nba-revenue-statistics  
*  NBA Salaries - https://hoopshype.com/salaries/  
*  NBA Salaries - https://data.world/datadavis/nba-salaries 
*  Alternate Pay - https://www.spotrac.com/nba/cash/   
*  All Stars - https://data.world/gmoney/nba-all-stars-2000-2016 
<br>

## Setup and Installation   
1.  A copy of the tableau workbook is `xxxxxx_v2022_1.twbx`.
1.  The dashboard can be viewed at https://ejw-data.github.io/xxxxxx/.  

<br>

## Examples  
TBD


## References:

Something to think about:  https://www.si.com/nba/2018/09/21/nba-teams-revenue-spending-breakdown-small-large-market  

Definitions:  

**Hard cap**: A team salary figure (set at the apron) that, once triggered, cannot be crossed for any reason. A hard cap can be triggered in one of three ways:  
*  A team uses the non-taxpayer mid-level exception.  
*  A team uses the bi-annual exception.  
*  A team acquires a player through a sign-and-trade.  


https://www.cbssports.com/nba/news/nba-salary-cap-explained-glossary-for-the-terms-you-need-to-know-ahead-of-basketball-free-agency/#:~:text=Hard%20cap%3A%20A%20team%20salary,uses%20the%20bi%2Dannual%20exception.

## ETL

Tables
* player
    - player_id
    - player_name
    - birthdate
    - first_game_date
    - retirement_date


* player-injury
    - player_id
    - injury
    - start_date
    - end_date


* team
    - team_id
    - team_name
    - team_abbrev
    - team_city
    - team_mascot
    - start_date
    - end_date

* games (schedule??)
    - game_id
    - home_team
    - away_team
    - location
    - arena
    - start_date
    - start_time_et
    - start_time_local

* player-team
    - player_id
    - team_id
    - position
    - start_date
    - end_date

* play-by-play
    - game_id
    - event_id
    - event_description
    - game_time
    - player_id

* players-substitution
    - player_id
    - game_id
    - team_id
    - quarter
    - time
    - type (sub-in or sub-out)

* players-scored
    - player_id
    - type_score (foul_shot, layup, dunk, 3ptr, etc)
    - location
    - pts_scored
    - quarter
    - time
    - shotclock

* players-fouls
    - player_id
    - type 
    - player_fouled
    - shooting_foul
    - pts_scored

* players-defense
    * player_id
    * type (steal, block, turnover)
    * offense_player
    * quarter
    * time

* players-assists
    - player_id
    - type (assist)
    - player_scored

* players-rebounds
    - player_id
    - type (offensive/defensive)
    - quarter
    - time
    - next play

* player-salary
    - player_id
    - season
    - income_source
    - conditions

* team-caps


*** What to record for p-b-p
    - event log
        - event_id
        - raw_description
        - table
        - _id
        - quarter
        - time