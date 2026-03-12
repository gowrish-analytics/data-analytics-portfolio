-- Hotel Booking Demand Analysis
-- Dataset: Hotel Booking Demand


-- 1. Total Bookings vs Cancellations
SELECT
    is_canceled,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY is_canceled;




-- 2. Top Countries by Hotel Bookings
SELECT
    country,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY country
ORDER BY total_bookings DESC
LIMIT 5;




-- 3. Monthly Booking Trends
SELECT
    arrival_date_month,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY total_bookings DESC;




-- 4. Revenue by Hotel Type
SELECT
    hotel,
    SUM(adr * (stays_in_week_nights + stays_in_weekend_nights)) AS total_revenue
FROM hotel_bookings
GROUP BY hotel;




-- 5. Revenue by Country
SELECT
    country,
    SUM(adr * (stays_in_week_nights + stays_in_weekend_nights)) AS total_revenue
FROM hotel_bookings
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;