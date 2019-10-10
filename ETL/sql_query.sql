create table minimum_wage(
   State varchar(30),
   Year int,
   High_Value numeric,
   Low_Value numeric,
   CPI_Average numeric
);

create table unemployment_rate(
   State varchar(50),
   County varchar(100),
    Year int,
   Rate numeric
);

create table unemployment_by_state(
    State varchar(150),
    Year int,
    rate numeric
);
Drop Table minimum_wage;
Drop Table unemployment_rate;
Drop Table unemployment_by_state

Select *
From unemployment_rate;

SELECT u.State, 
u.year, 
Rate, 
m.high_value, 
m.low_value,
m.cpi_average
FROM unemployment_by_state u
inner Join minimum_wage m
On u.state = m.state and u.year = m.year;
 

    

Select *
From minimum_wage;

select *
from unemployment_by_state;