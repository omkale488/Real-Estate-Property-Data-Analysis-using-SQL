0
create database Anisha;
use Anisha;

## 1. View all records

SELECT * FROM Train_Booking_Cleaned_500_Rows;

## 2. Select specific columns

SELECT Passenger_Name, Train_Name, Ticket_Price
FROM Train_Booking_Cleaned_500_Rows;

# 3.  Filter confirmed bookings

SELECT * 
FROM Train_Booking_Cleaned_500_Rows
WHERE Booking_Status = 'Confirmed';

# 4. Passengers above age 30

SELECT Passenger_Name, Age
FROM Train_Booking_Cleaned_500_Rows
WHERE Age > 30;

# 5. Total revenue

SELECT SUM(Ticket_Price) AS Total_Revenue
FROM Train_Booking_Cleaned_500_Rows;

# 6. Average ticket price

SELECT AVG(Ticket_Price) AS Avg_Ticket_Price
FROM Train_Booking_Cleaned_500_Rows;

# 7. Maximum & Minimum ticket price

SELECT MAX(Ticket_Price) AS Highest_Price,
       MIN(Ticket_Price) AS Lowest_Price
FROM Train_Booking_Cleaned_500_Rows;

#  8. Revenue by class

SELECT Class, SUM(Ticket_Price) AS Total_Revenue
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Class;

# 9. Booking count by gender

SELECT Gender, COUNT(*) AS Total_Bookings
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Gender;

# 10. Bookings by payment mode

SELECT Payment_Mode, COUNT(*) AS Total
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Payment_Mode;

# 11. Bookings in August 2024

SELECT *
FROM Train_Booking_Cleaned_500_Rows
WHERE MONTH(Journey_Date) = 8
AND YEAR(Journey_Date) = 2024;

# 12. Daily booking count

SELECT Journey_Date, COUNT(*) AS Total_Bookings
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Journey_Date
ORDER BY Journey_Date;

# 13. Confirmed bookings revenue

SELECT SUM(Ticket_Price) AS Confirmed_Revenue
FROM Train_Booking_Cleaned_500_Rows
WHERE Booking_Status = 'Confirmed';

# 14. Cancelled bookings count

SELECT COUNT(*) AS Cancelled_Count
FROM Train_Booking_Cleaned_500_Rows
WHERE Booking_Status = 'Cancelled';

# 15. Top 5 highest ticket prices

SELECT *
FROM Train_Booking_Cleaned_500_Rows
ORDER BY Ticket_Price DESC
LIMIT 5;

# 16. Most popular train 

SELECT Train_Name, COUNT(*) AS Total_Bookings
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Train_Name
ORDER BY Total_Bookings DESC
LIMIT 1;

 # 17. Revenue by source city\
 
 SELECT Source, SUM(Ticket_Price) AS Revenue
FROM Train_Booking_Cleaned_500_Rows
GROUP BY Source
ORDER BY Revenue DESC;

# 18. Rank passengers by ticket price

SELECT Passenger_Name,
       Ticket_Price,
       RANK() OVER (ORDER BY Ticket_Price DESC) AS Price_Rank
FROM Train_Booking_Cleaned_500_Rows;

