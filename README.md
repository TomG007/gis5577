# GIS5577 Week 1

This is your repository for week 1. You will find this same material on canvas. We will use github repositories as a way for keeping the information up to date for the entire class.

### Purpose
1. Go over class syllabus and class expectations
1. Introduce Relational Databases and SQL

### Class Exercise Instructions
I have added a sample dataset for you to explore on the server. The 2000 Census tracts for the state of Minnesota.
To load the dataset in your own database to the following steps.

1. Connect to your database

```
host address: 1XX.1XX.1XX.XXX, port: 5432
```

2. Create the mn_2000_census tracts table, by executing the create table statement ```mn_2000_census_tracts_tables.sql``` in the pgAdmin. The simplest way, is to can copy and paste this into a query. The text file ```mn_2000_census_tracts_tables.sql``` can be opened in a text editor (notepad++) to see the contents.

```SQL
CREATE TABLE mn_census_tracts_2000(GID serial primary key, GIS_Join_Match_Code text,...);
```

3. Load the table using the psql console
  1. Option 1. While you are still in psql execute the following command. Remember to change the file path with your own.
  
  ```SQL
  \copy mn_census_tracts_2000 from 'C:\git\GIS5577_spring_2019\GIS5577_week1\mn_census_tracts.csv' with header CSV;
  ```
  1. Option 2. Upload from the command line. When connecting to the server using 
  the psql command. Use the ```-c``` flag to issue a single command. The file path will need to be altered to reflect where your file is located.
  
  ```
  psql -h <hostaddress> -p 5432 -U <user> -d <database> -c "\copy mn_census_tracts_2000 from 'C:\git\GIS5577_spring_2019\GIS5577_week1\mn_census_tracts.csv' with header CSV"
  ```


### Please Complete by Next Week
1. Look at the Github materials on Canvas
  1. [YouTube Video on Github](https://youtu.be/BKr8lbx3uFY)
  1. [Github markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) 
  1. [Git Book](https://git-scm.com/book/en/v2) Read Chapters 1 & 2
  