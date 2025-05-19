show databases;
create database olympics_db;
show databases;
use olympics_db;
show tables;

select * from olympics limit 10;

-- Calculate Total Medals won by Male and Female 
select sex,count(medal) as total_medals_won
from olympics
group by 1;

-- Calculate Total Gold, Silver and Bronze Medals won by Male and Female
select
    sex,
    count(case when medal = 'Gold' then 1 end) as gold_medals,
    count(case when medal = 'Silver' then 1 end) as silver_medals,
    count(case when medal = 'Bronze' then 1 end) as bronze_medals,
    count(medal) as total_medals
from olympics
group by 1;

-- Get top 3 Country with most number of Medals
select noc,
		count(case when medal = 'Gold' then 1 end) as gold_medals_won,
		count(case when medal = 'Silver' then 1 end) as silver_medals_won,
		count(case when medal = 'Bronze' then 1 end) as bronze_medals_won,
		count(medal) as total_medals_won
from olympics
group by 1;

select noc as country,
		count(case when medal = 'Gold' then 1 end) as gold_medals_won,
		count(case when medal = 'Silver' then 1 end) as silver_medals_won,
		count(case when medal = 'Bronze' then 1 end) as bronze_medals_won,
		count(medal) as total_medals_won
from olympics
group by 1
order by 4 desc;

select noc as country,
		count(case when medal = 'Gold' then 1 end) as gold_medals_won,
		count(case when medal = 'Silver' then 1 end) as silver_medals_won,
		count(case when medal = 'Bronze' then 1 end) as bronze_medals_won,
		count(medal) as total_medals_won
from olympics
group by 1
order by 4 desc
limit 3;

-- Get the data of Medals Won by India
select * 
from olympics
where noc = 'IND'
order by year desc;

-- Get the Data of Number of Gold, Silver and Bronze MEdals won by India
select noc as country,
		count(case when medal = 'Gold' then 1 end) as gold_medals_won,
		count(case when medal = 'Silver' then 1 end) as silver_medals_won,
		count(case when medal = 'Bronze' then 1 end) as bronze_medals_won,
		count(medal) as total_medals_won
from olympics
where noc = 'IND'
group by 1;


-- Take out the name, Gender, Winning Year, Sport, Participating Event and Medals Won by India
select name,
		sex,
        year,
		sport,
        event,
        medal
from olympics
where medal = 'Gold' and noc='IND'
order by year;

select name,
		sex,
        year,
		sport,
        event,
        medal
from olympics
where medal = 'Silver' and noc='IND'
order by year;

select name,
		sex,
        year,
		sport,
        event,
        medal
from olympics
where medal = 'Bronze' and noc='IND'
order by year;

-- Get the top 10 Athelete Name who won maximum number of medals
select name,
		noc as country,
		count(case when medal = 'Gold' then 1 end) as gold_medals_won,
		count(case when medal = 'Silver' then 1 end) as silver_medals_won,
		count(case when medal = 'Bronze' then 1 end) as bronze_medals_won,
		count(medal) as total_medals_won
from olympics
group by 1,2
order by 6 desc
limit 10;