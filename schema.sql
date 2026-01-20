#creating the riders
CREATE DATABASE IF NOT EXISTS MOTO_TAXI;
USE MOTO_TAXI;
CREATE TABLE IF NOT EXISTS riders (
    rider_id INT PRIMARY KEY,
    rider_name VARCHAR(255),
    motorcycle_plate VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(100),
    phone VARCHAR(20)
);

#creating the trips table
CREATE TABLE IF NOT EXISTS trips(
trip_id int PRIMARY KEY,
rider_id int,
passenger_id int,
fare decimal(10,2),
trip_date datetime DEFAULT current_timestamp,
FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)

);

ALTER TABLE trips
ADD constraint fk_rider_id FOREIGN KEY (rider_id) REFERENCES riders(rider_id),
ADD constraint FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)


 