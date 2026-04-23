-- create database task5;
use task5;
-- CREATE TABLE Users (
--     user_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     balance DECIMAL(10,2)
-- );

-- CREATE TABLE Merchants (
--     merchant_id INT PRIMARY KEY AUTO_INCREMENT,
--     merchant_name VARCHAR(100),
--     balance DECIMAL(10,2)
-- );

-- INSERT INTO Users (name, balance) VALUES
-- ('John', 10000),
-- ('Alice', 5000);

-- INSERT INTO Merchants (merchant_name, balance) VALUES
-- ('Amazon', 20000),
-- ('Flipkart', 15000);

-- START TRANSACTION;

-- -- Deduct from User
-- UPDATE Users
-- SET balance = balance - 2000
-- WHERE user_id = 1;

-- -- Add to Merchant
-- UPDATE Merchants
-- SET balance = balance + 2000
-- WHERE merchant_id = 1;

-- -- If everything is successful
-- COMMIT;

-- START TRANSACTION;

-- -- Deduct from User
-- UPDATE Users
-- SET balance = balance - 20000   -- Too much amount (error scenario)
-- WHERE user_id = 1;

-- -- Add to Merchant
-- UPDATE Merchants
-- SET balance = balance + 20000
-- WHERE merchant_id = 1;

-- -- Something goes wrong → cancel all changes
-- ROLLBACK;

-- DELIMITER $$

-- CREATE PROCEDURE make_payment()
-- BEGIN
--     DECLARE user_balance DECIMAL(10,2);

--     START TRANSACTION;

--     SELECT balance INTO user_balance
--     FROM Users
--     WHERE user_id = 1;

--     IF user_balance >= 2000 THEN

--         UPDATE Users
--         SET balance = balance - 2000
--         WHERE user_id = 1;

--         UPDATE Merchants
--         SET balance = balance + 2000
--         WHERE merchant_id = 1;

--         COMMIT;

--     ELSE
--         ROLLBACK;
--     END IF;

-- END $$

-- DELIMITER ;

CALL make_payment();