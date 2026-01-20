INSERT INTO riders (rider_id, name, motorcycle_plate) VALUES
(1, 'Moses', 'RDR-001'),
(2, 'Kamy', 'RDR-002'),
(3, 'Helen', 'RDR-003');

INSERT INTO passengers (passenger_id, name, phone) VALUES
(10, 'Nirere', '0788111222'),
(11, 'David', '0788333444'),
(12, 'Janna', '0788555666');

INSERT INTO trips (trip_id, rider_id, passenger_id, fare) VALUES 
(1, 2, 10, 5000),
(2, 1, 11, 10000),
(3, 2, 12, 4000),
(4, 3, 10, 8000),
(5, 1, 12, 5000);

select * from riders;
select * from passengers;
select * from trips;

