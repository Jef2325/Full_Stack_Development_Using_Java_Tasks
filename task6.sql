-- create database task6;
use task6;

-- CREATE TABLE Transactions (
--     txn_id INT PRIMARY KEY AUTO_INCREMENT,
--     user_name VARCHAR(100),
--     amount DECIMAL(10,2),
--     txn_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE Transaction_Log (
--     log_id INT PRIMARY KEY AUTO_INCREMENT,
--     action_type VARCHAR(20),
--     txn_id INT,
--     user_name VARCHAR(100),
--     amount DECIMAL(10,2),
--     action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- DELIMITER $$

-- CREATE TRIGGER after_insert_txn
-- AFTER INSERT ON Transactions
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO Transaction_Log (action_type, txn_id, user_name, amount)
--     VALUES ('INSERT', NEW.txn_id, NEW.user_name, NEW.amount);
-- END $$

-- DELIMITER ;

-- DELIMITER $$

-- CREATE TRIGGER after_update_txn
-- AFTER UPDATE ON Transactions
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO Transaction_Log (action_type, txn_id, user_name, amount)
--     VALUES ('UPDATE', NEW.txn_id, NEW.user_name, NEW.amount);
-- END $$

-- DELIMITER ;

-- Insert
-- INSERT INTO Transactions (user_name, amount)
-- VALUES ('John', 1500);

-- Update
-- UPDATE Transactions
-- SET amount = 2000
-- WHERE txn_id = 1;

-- CREATE VIEW Daily_Activity_Report AS
-- SELECT 
--     DATE(action_time) AS activity_date,
--     action_type,
--     COUNT(*) AS total_actions,
--     SUM(amount) AS total_amount
-- FROM Transaction_Log
-- GROUP BY DATE(action_time), action_type
-- ORDER BY activity_date DESC;


SELECT * FROM Daily_Activity_Report;
