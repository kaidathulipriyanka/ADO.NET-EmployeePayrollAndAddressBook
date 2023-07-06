# --UC1--
CREATE DATABASE AddressBookDB;
 
# --UC2--
USE AddressBookDB;
CREATE TABLE AddressBook (
    ContactID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(100)
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

# --UC3--
INSERT INTO AddressBook (FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
VALUES ('kaidhathuli', 'priya', '19-4-376/2', 'tpt', 'ap', '12345', '123-456-7890', 'kaidhathulipriyanka@gmai.com');

# --UC4--
UPDATE AddressBook
SET Address = '19-4-376/2', City = 'tirupathi', State = 'andhra pradesh', Zip = '517501'
WHERE FirstName = 'kaidhathuli' AND LastName = 'priya';

# --UC5--
DELETE FROM AddressBook
WHERE FirstName = 'kaidhathuli' AND LastName = 'priyanka';

# --UC6--
SELECT * FROM AddressBook
WHERE City = 'tpt' OR State = 'ap';

# --UC7--
SELECT City, State, COUNT(*) AS Size
FROM AddressBook
GROUP BY City, State;

# --UC8--
SELECT *
FROM AddressBook
WHERE City = 'Hyd'
ORDER BY FirstName, LastName;

# --UC9--
ALTER TABLE AddressBook
ADD Type VARCHAR(50);

# --UC10--
SELECT Type, COUNT(*) AS Count
FROM AddressBook
GROUP BY Type;






