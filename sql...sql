
DROP DATABASE IF EXISTS car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;
CREATE TABLE dealerships (
  dealership_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12)
);
CREATE TABLE vehicles (
  VIN VARCHAR(17) PRIMARY KEY,
  -- Add more columns as per your requirement
  SOLD BOOLEAN
);
CREATE TABLE inventory (
  dealership_id INT,
  VIN VARCHAR(17),
  FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
CREATE TABLE sales_contracts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
CREATE TABLE lease_contracts (
  id INT AUTO_INCREMENT PRIMARY KEY,

  VIN VARCHAR(17),
  FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
INSERT INTO dealerships (name, address, phone)
VALUES ('ABC Motors', '123 Main St', '555-1234');
INSERT INTO vehicles (VIN, SOLD)
VALUES ('12345678901234567', FALSE);
INSERT INTO inventory (dealership_id, VIN)
VALUES (1, '12345678901234567');
INSERT INTO sales_contracts (VIN)
VALUES ('12345678901234567');

INSERT INTO lease_contracts (VIN)
VALUES ('12345678901234567');