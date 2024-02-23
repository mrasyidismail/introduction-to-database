-- Buat Database
CREATE DATABASE dbBOT

-- Gunakan Database
USE dbBOT

-- Delete Database
DROP DATABASE dbBOT

-- Membuat Table
CREATE TABLE BOT(
	botID CHAR(11) PRIMARY KEY,
	botName VARCHAR(20) NOT NULL,
	botDesc VARCHAR(100) DEFAULT 'No Description',
)

-- Delete Table
DROP TABLE BOT

CREATE TABLE Users(
	userID CHAR(4) PRIMARY KEY CHECK(userID LIKE 'U[0-9][0-9][0-9]'), -- Check User ID If It's like the following regex pattern UXXX
	userName VARCHAR(25) NOT NULL,
	userAge INTEGER,
	CONSTRAINT validateAge CHECK(userAge >= 17 AND userAge < 40),
)

-- Edit Table
ALTER TABLE Users
-- Add Column in a table
ADD userDOB DATE

ALTER TABLE Users
-- Delete Column in a table
DROP COLUMN userDOB

ALTER TABLE Users
-- Edit Column in a Table
ALTER COLUMN userName VARCHAR(50)

ALTER TABLE Users
ADD CONSTRAINT validateName
CHECK(LEN(userName) > 5)

CREATE TABLE HTransaction(
	HTransactionID CHAR(5) PRIMARY KEY,
	-- userID CHAR(4) REFERENCES Users(userID), -- Foreign KEY 1
	userID CHAR(4), -- Foreign KEY 2
	FOREIGN KEY(userID) REFERENCES Users(userID) , -- Foreign KEY 2
)
