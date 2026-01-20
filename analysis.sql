select r.name as Rider_Name, sum(t.fare) as Total_Fare, COUNT(t.trip_id) as Total_Trips
from riders r 
INNER JOIN trips t on r.rider_id = t.rider_id
GROUP BY r.name
ORDER BY Total_Fare DESC