create schema cars;

use cars;
-- READ DATA --

SELECT * FROM CAR_DATA;

-- TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS --
SELECT count(*) FROM CAR_DATA; #7927

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023? -- 
SELECT COUNT(*) FROM CAR_DATA WHERE YEAR=2023; #6

-- The manager asked the employee how many cars are available in 2020,2021,2022 --
SELECT COUNT(*) FROM CAR_DATA WHERE YEAR=2020; #74 cars
SELECT COUNT(*) FROM CAR_DATA WHERE YEAR=2021; #7 cars
SELECT COUNT(*) FROM CAR_DATA WHERE YEAR=2022; #7 cars
-- Or we could use group by to count multiple years by group by query--
select count(*) from car_data where year in (2020,2021,2022) group by year; 

-- client asked me to print the total of all cars by year because he cannot see all the details--
select year, count(*) from car_data group by year;  
-- Client asked dealer the number of deisel cars in 2020 --
select count(*) from car_data where year = 2020 and fuel= "Diesel" ; #20

-- Client asked dealer the number of petrol cars in 2020 --
select count(*) from car_data where year = 2020 and fuel= "Petrol" ; #51

-- Client asked to get details of all the fuel cars (petrol, diesel and CNG) by year --  
select year, count(*) from car_data where fuel= "Petrol" group by year ; 
select year, count(*) from car_data where fuel= "Diesel" group by year ; 
select year, count(*) from car_data where fuel= "CNG" group by year ; 

-- Client wants to know which year had more than 100 cars -- 
select year,  count(*) from car_data group by year having count(*)>100; 
-- for less than 100 cars -- 
select year,  count(*) from car_data group by year having count(*)<100; 

-- Client needs car count from year 2015 to 2023-- 
select count(*) from car_data where year between 2015 and 2023; #4124

-- Client needs car details from 2015 to 2023 --
select * from car_data where year between 2015 and 2023 ; 
