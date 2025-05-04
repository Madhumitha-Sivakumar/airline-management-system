create database airline;
use airline;
-- users table creation 

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

-- insrt values into users table

INSERT INTO users  VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '123-456-7890'),
(2, 'Bob Smith', 'bob.smith@example.com', '321-654-0987'),
(3, 'Charlie Adams', 'charlie.adams@example.com', '456-789-0123'),
(4, 'Diana Clark', 'diana.clark@example.com', '234-567-8901'),
(5, 'Ethan Martinez', 'ethan.martinez@example.com', '345-678-9012'),
(6, 'Fiona Brown', 'fiona.brown@example.com', '456-789-1234'),
(7, 'George White', 'george.white@example.com', '567-890-2345'),
(8, 'Hannah Lewis', 'hannah.lewis@example.com', '678-901-3456'),
(9, 'Ian Walker', 'ian.walker@example.com', '789-012-4567'),
(10, 'Jasmine Hall', 'jasmine.hall@example.com', '890-123-5678'),
(11, 'Kevin Young', 'kevin.young@example.com', '901-234-6789'),
(12, 'Laura Allen', 'laura.allen@example.com', '012-345-7890'),
(13, 'Michael Scott', 'michael.scott@example.com', '123-456-8901'),
(14, 'Nina Baker', 'nina.baker@example.com', '234-567-9012'),
(15, 'Oscar Perez', 'oscar.perez@example.com', '345-678-0123'),
(16, 'Paula Rivera', 'paula.rivera@example.com', '456-789-1230'),
(17, 'Quinn Morgan', 'quinn.morgan@example.com', '567-890-2340'),
(18, 'Rachel Wood', 'rachel.wood@example.com', '678-901-3450'),
(19, 'Samuel King', 'samuel.king@example.com', '789-012-4560'),
(20, 'Tina Moore', 'tina.moore@example.com', '890-123-5670'),
(21, 'Umar Grant', 'umar.grant@example.com', '901-234-6780'),
(22, 'Vera Diaz', 'vera.diaz@example.com', '012-345-7891'),
(23, 'Walter Hughes', 'walter.hughes@example.com', '123-456-8902'),
(24, 'Xena Ford', 'xena.ford@example.com', '234-567-9013'),
(25, 'Yusuf Stone', 'yusuf.stone@example.com', '345-678-0124'),
(26, 'Zara Chavez', 'zara.chavez@example.com', '456-789-1235'),
(27, 'Aaron Foster', 'aaron.foster@example.com', '567-890-2346'),
(28, 'Bella Hayes', 'bella.hayes@example.com', '678-901-3457'),
(29, 'Caleb Knight', 'caleb.knight@example.com', '789-012-4568'),
(30, 'Dana Lopez', 'dana.lopez@example.com', '890-123-5679');

-- services table creation

CREATE TABLE services (
    ServiceID INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2)
);

-- insert datas into services table

INSERT INTO services  VALUES
(1, 'Economy Flight', 'Basic economy class seat with no extras.', 99.99),
(2, 'Premium Economy Flight', 'Extra legroom and complimentary meal.', 149.99),
(3, 'Business Class Flight', 'Business class seating and premium meals.', 399.99),
(4, 'First Class Flight', 'Luxury seating and top-tier service.', 799.99),
(5, 'In-flight WiFi', 'Unlimited WiFi access during flight.', 14.99),
(6, 'Extra Baggage', 'Additional 20kg baggage allowance.', 29.99),
(7, 'Priority Boarding', 'Get on the plane before general passengers.', 19.99),
(8, 'Travel Insurance', 'Basic travel insurance coverage.', 24.99),
(9, 'Window Seat Selection', 'Reserve a window seat in advance.', 9.99),
(10, 'Aisle Seat Selection', 'Reserve an aisle seat in advance.', 9.99),
(11, 'Pet in Cabin', 'Travel with your pet in the cabin.', 59.99),
(12, 'Pet in Cargo', 'Check your pet into cargo safely.', 89.99),
(13, 'Infant Seat', 'Seat and accessories for infant travel.', 19.99),
(14, 'Meal Upgrade', 'Upgrade to a premium meal.', 14.99),
(15, 'Lounge Access', 'Access to the business lounge pre-flight.', 34.99),
(16, 'Airport Shuttle', 'Shuttle service from airport to hotel.', 19.99),
(17, 'Hotel Booking', 'Add-on hotel booking through partner.', 119.99),
(18, 'Car Rental', 'Compact car rental at destination.', 39.99),
(19, 'Seat Upgrade to Premium', 'Upgrade from economy to premium economy.', 59.99),
(20, 'Seat Upgrade to Business', 'Upgrade from economy to business class.', 199.99),
(21, 'Flexible Ticket', 'Allows free changes to booking.', 49.99),
(22, 'Carbon Offset', 'Offset your flight’s carbon footprint.', 4.99),
(23, 'VIP Service', 'Personal assistance through the airport.', 129.99),
(24, 'International Roaming SIM', 'SIM card with global roaming data.', 24.99),
(25, 'Child Assistance', 'Special assistance for unaccompanied minors.', 29.99),
(26, 'Lost Baggage Protection', 'Compensation and tracking support.', 14.99),
(27, 'Flight Delay Guarantee', 'Compensation if delayed over 3 hours.', 9.99),
(28, 'Medical Assistance Add-On', '24/7 medical support during travel.', 19.99),
(29, 'Language Support Service', 'Interpreter service on demand.', 12.99),
(30, 'Travel Guide Add-On', 'Digital travel guide for your destination.', 7.99);


-- bookings table creation 

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    UserID INT,
    ServiceID INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID) on delete cascade,
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)on delete cascade
);

-- data insertion in bookings table

INSERT INTO Bookings  VALUES
(1, 3, 5, '2025-04-01', 'Confirmed'),
(2, 7, 10, '2025-04-03', 'Pending'),
(3, 1, 2, '2025-04-05', 'Cancelled'),
(4, 2, 7, '2025-04-06', 'Confirmed'),
(5, 8, 1, '2025-04-07', 'Confirmed'),
(6, 5, 3, '2025-04-08', 'Pending'),
(7, 10, 12, '2025-04-09', 'Confirmed'),
(8, 4, 4, '2025-04-10', 'Cancelled'),
(9, 6, 11, '2025-04-12', 'Confirmed'),
(10, 9, 8, '2025-04-13', 'Pending'),
(11, 12, 6, '2025-04-14', 'Confirmed'),
(12, 11, 2, '2025-04-15', 'Pending'),
(13, 14, 9, '2025-04-15', 'Confirmed'),
(14, 13, 14, '2025-04-16', 'Cancelled'),
(15, 15, 20, '2025-04-17', 'Confirmed'),
(16, 17, 13, '2025-04-18', 'Pending'),
(17, 16, 15, '2025-04-19', 'Confirmed'),
(18, 18, 17, '2025-04-19', 'Cancelled'),
(19, 20, 10, '2025-04-20', 'Confirmed'),
(20, 19, 1, '2025-04-20', 'Pending'),
(21, 22, 19, '2025-04-21', 'Confirmed'),
(22, 21, 16, '2025-04-21', 'Confirmed'),
(23, 23, 21, '2025-04-22', 'Pending'),
(24, 24, 25, '2025-04-23', 'Confirmed'),
(25, 25, 28, '2025-04-23', 'Cancelled'),
(26, 26, 18, '2025-04-24', 'Confirmed'),
(27, 27, 23, '2025-04-25', 'Pending'),
(28, 28, 26, '2025-04-26', 'Confirmed'),
(29, 29, 24, '2025-04-27', 'Confirmed'),
(30, 30, 30, '2025-04-28', 'Pending');

-- review table creation

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    UserID INT,
    ServiceID INT,
    Rating INT,
    Comment varchar(100),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)on delete cascade,
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)on delete cascade
);

-- data insertion in reviews table

INSERT INTO reviews VALUES
(1, 1, 1, 4, 'Smooth booking experience.'),
(2, 2, 2, 5, 'Great service and fast.'),
(3, 3, 3, 3, 'It was okay, but could improve.'),
(4, 4, 4, 2, 'Not worth the price.'),
(5, 5, 5, 5, 'Excellent WiFi throughout the flight.'),
(6, 6, 6, 4, 'Extra baggage process was easy.'),
(7, 7, 7, 3, 'Priority boarding wasn’t enforced.'),
(8, 8, 8, 5, 'Travel insurance saved my trip!'),
(9, 9, 9, 4, 'Window seat as promised.'),
(10, 10, 10, 2, 'Not enough legroom.'),
(11, 11, 11, 5, 'Loved having my pet with me.'),
(12, 12, 12, 4, 'Pet cargo was handled well.'),
(13, 13, 13, 3, 'Infant seat could be more comfortable.'),
(14, 14, 14, 4, 'Meal was delicious!'),
(15, 15, 15, 5, 'Lounge access was top-tier.'),
(16, 16, 16, 3, 'Shuttle took too long.'),
(17, 17, 17, 5, 'Nice hotel, smooth check-in.'),
(18, 18, 18, 4, 'Good car rental experience.'),
(19, 19, 19, 2, 'Seat upgrade not worth it.'),
(20, 20, 20, 5, 'Totally worth upgrading to business class.'),
(21, 21, 21, 3, 'Could be more flexible.'),
(22, 22, 22, 5, 'Glad to support the environment.'),
(23, 23, 23, 5, 'VIP service was outstanding.'),
(24, 24, 24, 4, 'Good international SIM coverage.'),
(25, 25, 25, 3, 'Child assistance was okay.'),
(26, 26, 26, 4, 'Lost bag support worked well.'),
(27, 27, 27, 2, 'No compensation received.'),
(28, 28, 28, 4, 'Medical help was prompt.'),
(29, 29, 29, 5, 'Helpful interpreters at airport.'),
(30, 30, 30, 4, 'Great digital travel guide.');

-- payment table creation

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    Amount DECIMAL(10, 2) null,
    PaymentDate DATE,
    PaymentMethod VARCHAR(100),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)on delete cascade);
   
-- data insertion in payment table  

INSERT INTO Payment VALUES
(1, 1, 99.99, '2025-04-01', 'Credit Card'),
(2, 2, 19.99, '2025-04-03', 'PayPal'),
(3, 3, 149.99, '2025-04-05', 'Debit Card'),
(4, 4, 29.99, '2025-04-06', 'UPI'),
(5, 5, 99.99, '2025-04-07', 'Credit Card'),
(6, 6, 399.99, '2025-04-08', 'Net Banking'),
(7, 7, 59.99, '2025-04-09', 'Credit Card'),
(8, 8, 799.99, '2025-04-10', 'PayPal'),
(9, 9, 89.99, '2025-04-12', 'Credit Card'),
(10, 10, 24.99, '2025-04-13', 'UPI'),
(11, 11, 29.99, '2025-04-14', 'Credit Card'),
(12, 12, 149.99, '2025-04-15', 'Debit Card'),
(13, 13, 9.99, '2025-04-15', 'UPI'),
(14, 14, 14.99, '2025-04-16', 'Credit Card'),
(15, 15, 199.99, '2025-04-17', 'Credit Card'),
(16, 16, 19.99, '2025-04-18', 'Debit Card'),
(17, 17, 34.99, '2025-04-19', 'PayPal'),
(18, 18, 119.99, '2025-04-19', 'Credit Card'),
(19, 19, 59.99, '2025-04-20', 'Credit Card'),
(20, 20, 14.99, '2025-04-20', 'UPI'),
(21, 21, 4.99, '2025-04-21', 'Debit Card'),
(22, 22, 129.99, '2025-04-21', 'Credit Card'),
(23, 23, 24.99, '2025-04-22', 'Net Banking'),
(24, 24, 29.99, '2025-04-23', 'Credit Card'),
(25, 25, 14.99, '2025-04-23', 'PayPal'),
(26, 26, 9.99, '2025-04-24', 'Credit Card'),
(27, 27, 19.99, '2025-04-25', 'Debit Card'),
(28, 28, 12.99, '2025-04-26', 'Credit Card'),
(29, 29, 7.99, '2025-04-27', 'UPI'),
(30, 30, 39.99, '2025-04-28', 'Credit Card');

-- CancellationRefund table creation

CREATE TABLE CancellationRefund (
    Cancellation_RefundID INT PRIMARY KEY,
    BookingID INT,
    Cancellation_Date DATE,
    Refund_Amount DECIMAL(10, 2) null,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID) ON DELETE CASCADE
);

-- data insertion in CancellationRefund table

INSERT INTO CancellationRefund VALUES
(1, 1, '2025-04-02', 50.00),
(2, 2, '2025-04-04', 19.99),
(3, 3, '2025-04-06', 149.99),
(4, 4, '2025-04-07', 29.99),
(5, 5, '2025-04-08', 99.99),
(6, 6, '2025-04-09', 199.99),
(7, 7, '2025-04-10', 59.99),
(8, 8, '2025-04-11', 799.99),
(9, 9, '2025-04-13', 89.99),
(10, 10, '2025-04-14', 24.99),
(11, 11, '2025-04-15', 29.99),
(12, 12, '2025-04-16', 149.99),
(13, 13, '2025-04-17', 9.99),
(14, 14, '2025-04-18', 14.99),
(15, 15, '2025-04-19', 199.99),
(16, 16, '2025-04-20', 19.99),
(17, 17, '2025-04-21', 34.99),
(18, 18, '2025-04-22', 119.99),
(19, 19, '2025-04-23', 59.99),
(20, 20, '2025-04-24', 14.99),
(21, 21, '2025-04-25', 4.99),
(22, 22, '2025-04-26', 129.99),
(23, 23, '2025-04-27', 24.99),
(24, 24, '2025-04-28', 29.99),
(25, 25, '2025-04-29', 14.99),
(26, 26, '2025-04-30', 9.99),
(27, 27, '2025-05-01', 19.99),
(28, 28, '2025-05-02', 12.99),
(29, 29, '2025-05-03', 7.99),
(30, 30, '2025-05-04', 39.99);

-- notification table creation 

CREATE TABLE Notifications (
    Notification_ID INT PRIMARY KEY,
    UserID INT,
    Message varchar(100),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)on delete cascade
);

-- data insertion in notifications table

INSERT INTO notifications VALUES
(1, 1, 'Your flight has been confirmed!'),
(2, 2, 'Your payment was successfully processed.'),
(3, 3, 'Priority boarding available for your flight.'),
(4, 4, 'Reminder: Flight departs in 24 hours.'),
(5, 5, 'Your seat selection has been confirmed.'),
(6, 6, 'Your baggage allowance has been updated.'),
(7, 7, 'Your refund has been processed.'),
(8, 8, 'Flight delay: Expect a 30-minute delay.'),
(9, 9, 'Flight cancellation: Full refund issued.'),
(10, 10, 'You’ve been upgraded to business class.'),
(11, 11, 'New offer: Book a flight, get 10% off.'),
(12, 12, 'Reminder: Your flight is tomorrow.'),
(13, 13, 'Special assistance has been arranged for you.'),
(14, 14, 'Your pet booking has been confirmed.'),
(15, 15, 'Lounge access granted for your upcoming flight.'),
(16, 16, 'Reminder: Complete your booking.'),
(17, 17, 'Your meal selection has been confirmed.'),
(18, 18, 'Urgent: Your flight has been rescheduled.'),
(19, 19, 'Welcome aboard! Your booking is complete.'),
(20, 20, 'Your payment is pending. Please complete it soon.'),
(21, 21, 'Reminder: Upgrade to premium seating available.'),
(22, 22, 'Your car rental has been booked.'),
(23, 23, 'Flight delay: Please check new departure time.'),
(24, 24, 'Your seat upgrade to premium has been confirmed.'),
(25, 25, 'Travel insurance purchase confirmation.'),
(26, 26, 'Your booking is confirmed. Safe travels!'),
(27, 27, 'Notification: Special offers for frequent flyers.'),
(28, 28, 'Your flight is on schedule.'),
(29, 29, 'Last minute upgrade offer: Grab premium seats!'),
(30, 30, 'Reminder: Your flight departs in 2 hours.');

-- payment table creation

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id) on delete cascade
);

-- data insertion in payments table

INSERT INTO payments VALUES
(1, 1, 99.99, '2025-04-01', 'Credit Card'),
(2, 2, 19.99, '2025-04-03', 'PayPal'),
(3, 3, 149.99, '2025-04-05', 'Debit Card'),
(4, 4, 29.99, '2025-04-06', 'UPI'),
(5, 5, 99.99, '2025-04-07', 'Credit Card'),
(6, 6, 399.99, '2025-04-08', 'Net Banking'),
(7, 7, 59.99, '2025-04-09', 'Credit Card'),
(8, 8, 799.99, '2025-04-10', 'PayPal'),
(9, 9, 89.99, '2025-04-12', 'Credit Card'),
(10, 10, 24.99, '2025-04-13', 'UPI'),
(11, 11, 29.99, '2025-04-14', 'Credit Card'),
(12, 12, 149.99, '2025-04-15', 'Debit Card'),
(13, 13, 9.99, '2025-04-15', 'UPI'),
(14, 14, 14.99, '2025-04-16', 'Credit Card'),
(15, 15, 199.99, '2025-04-17', 'Credit Card'),
(16, 16, 19.99, '2025-04-18', 'Debit Card'),
(17, 17, 34.99, '2025-04-19', 'PayPal'),
(18, 18, 119.99, '2025-04-19', 'Credit Card'),
(19, 19, 59.99, '2025-04-20', 'Credit Card'),
(20, 20, 14.99, '2025-04-20', 'UPI'),
(21, 21, 4.99, '2025-04-21', 'Debit Card'),
(22, 22, 129.99, '2025-04-21', 'Credit Card'),
(23, 23, 24.99, '2025-04-22', 'Net Banking'),
(24, 24, 29.99, '2025-04-23', 'Credit Card'),
(25, 25, 14.99, '2025-04-23', 'PayPal'),
(26, 26, 9.99, '2025-04-24', 'Credit Card'),
(27, 27, 19.99, '2025-04-25', 'Debit Card'),
(28, 28, 12.99, '2025-04-26', 'Credit Card'),
(29, 29, 7.99, '2025-04-27', 'UPI'),
(30, 30, 39.99, '2025-04-28', 'Credit Card');

-- Fetch booking, service, payment, and status details for a specific user(1)

DELIMITER //

CREATE PROCEDURE GetUserBookingDetails(IN inputUserID INT)
BEGIN
    SELECT 
        b.BookingID,
        s.name AS ServiceName,
        s.price AS ServicePrice,
        b.Date AS BookingDate,
        b.Status AS BookingStatus,
        p.Amount AS PaymentAmount,
        p.PaymentMethod AS PaymentMethod,
        p.PaymentDate AS PaymentDate
    FROM Bookings b
    JOIN Services s ON b.ServiceID = s.ServiceID
    LEFT JOIN Payment p ON b.BookingID = p.BookingID
    WHERE b.UserID = inputUserID;
END //

DELIMITER ;

-- Insert a new booking entry along with payment in a transaction-safe way(2)

DELIMITER //

CREATE PROCEDURE AddNewBooking(
    IN inputUserID INT,
    IN inputServiceID INT,
    IN inputDate DATE,
    IN inputStatus VARCHAR(50),
    IN inputAmount DECIMAL(10,2),
    IN inputPaymentMethod VARCHAR(100)
)
BEGIN
    DECLARE lastBookingID INT;

    -- Error handler to rollback on failure
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO Bookings (UserID, ServiceID, Date, Status)
    VALUES (inputUserID, inputServiceID, inputDate, inputStatus);

    SET lastBookingID = LAST_INSERT_ID();

    INSERT INTO Payment (BookingID, Amount, PaymentDate, PaymentMethod)
    VALUES (lastBookingID, inputAmount, CURDATE(), inputPaymentMethod);

    COMMIT;
END //

DELIMITER ;


-- update booking status and records a refund(3)

DELIMITER //

CREATE PROCEDURE CancelBookingWithRefund(
    IN inputBookingID INT,
    IN refundAmount DECIMAL(10,2)
)
BEGIN
    -- Optional error handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    UPDATE Bookings
    SET Status = 'cancelled'
    WHERE BookingID = inputBookingID;

    INSERT INTO CancellationRefund (BookingID, Cancellation_Date, Refund_Amount)
    VALUES (inputBookingID, CURDATE(), refundAmount);

    COMMIT;
END //

DELIMITER ;

-- the average rating and number of reviews for a service(4)

DELIMITER //

CREATE PROCEDURE GetServiceRatingStats(IN inputServiceID INT)
BEGIN
    SELECT 
        AVG(Rating) AS AverageRating,
        COUNT(*) AS TotalReviews
    FROM Reviews
    WHERE ServiceID = inputServiceID;
END //

DELIMITER ;

-- Adds a message to the Notifications table for a given user(5)

DELIMITER //

CREATE PROCEDURE SendUserNotification(
    IN inputUserID INT,
    IN inputMessage VARCHAR(100)
)
BEGIN
    INSERT INTO Notifications (UserID, Message)
    VALUES (inputUserID, inputMessage);
END //

DELIMITER ;

--  Get All Bookings for a Specific Date(6)

DELIMITER //

CREATE PROCEDURE GetBookingsByDate(IN bookingDate DATE)
BEGIN
    SELECT * 
    FROM bookings
    WHERE DATE(booking_date) = bookingDate;
END //

DELIMITER ;

-- GenerateInvoice(7)

DELIMITER //

CREATE PROCEDURE GenerateInvoice(IN p_bookingId INT)
BEGIN
    SELECT 
        b.id AS booking_id,
        u.name AS user_name,
        s.name AS service_name,
        s.price,
        b.booking_date
    FROM bookings b
    JOIN users u ON b.user_id = u.id
    JOIN services s ON b.service_id = s.id
    WHERE b.id = p_bookingId;
END //

DELIMITER ;

-- SubmitRating(8)

DELIMITER //

CREATE PROCEDURE SubmitRating(
    IN p_userId INT,
    IN p_serviceId INT,
    IN p_rating INT,
    IN p_comment TEXT
)
BEGIN
    INSERT INTO ratings (user_id, service_id, rating, comment, created_at)
    VALUES (p_userId, p_serviceId, p_rating, p_comment, NOW());
END //

DELIMITER ;

-- GetMonthlyRevenue(9)

DELIMITER //

CREATE PROCEDURE GetMonthlyRevenue(IN p_year INT, IN p_month INT)
BEGIN
    SELECT 
        SUM(amount) AS total_revenue,
        COUNT(*) AS total_payments
    FROM payments
    WHERE YEAR(payment_date) = p_year AND MONTH(payment_date) = p_month;
END //

DELIMITER ;

-- GetUserBookings (10)

DELIMITER //

CREATE PROCEDURE GetUserBookings(IN p_userId INT)
BEGIN
    SELECT 
        b.id AS booking_id,
        s.name AS service_name,
        b.booking_date,
        b.status
    FROM bookings b
    JOIN services s ON b.service_id = s.id
    WHERE b.user_id = p_userId
    ORDER BY b.booking_date DESC;
END //

DELIMITER ;

-- GetTopServices(11)

DELIMITER //

CREATE PROCEDURE GetTopServices(IN p_limit INT)
BEGIN
    SELECT 
        s.id,
        s.name,
        COUNT(b.id) AS total_bookings
    FROM services s
    JOIN bookings b ON s.id = b.service_id
    GROUP BY s.id, s.name
    ORDER BY total_bookings DESC
    LIMIT p_limit;
END //

DELIMITER ;


CALL GetUserBookingDetails(1); 
CALL AddNewBooking(
    101,                  -- inputUserID
    5,                    -- inputServiceID
    '2025-05-10',         -- inputDate
    'Confirmed',          -- inputStatus
    299.99,               -- inputAmount
    'Credit Card'         -- inputPaymentMethod
);
CALL CancelBookingWithRefund(2001, 150.00);
CALL GetServiceRatingStats(3);

