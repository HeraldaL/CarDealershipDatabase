
CREATE DATABASE car_dealership;
USE car_dealership;
CREATE TABLE dealerships (
  dealership_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12)
);
CREATE TABLE vehicles (
`VIN` VARCHAR(50),PRIMARY KEY,
  `year` INT,
  `make` VARCHAR(45),
  `model` VARCHAR(45),
  `vehicleType` VARCHAR(45),
  `color` VARCHAR(45),
  `odometer` INT,
  `price` DOUBLE
  `sold` BOOLEAN,
);
INSERT INTO vehicles (VIN, year, make, model, vehicle_type, color, odometer, price, sold)
VALUES('12345678901234567', 2021, 'Toyota', 'Corolla', 'Sedan', 'Blue', 10000, 15000.00, FALSE),
        ('23456789012345678', 2022, 'Honda', 'Civic', 'Sedan', 'Red', 12000, 18000.00, FALSE),
        ('34567890123456789', 2020, 'Ford', 'Mustang', 'Sports Car', 'Black', 8000, 25000.00, TRUE);


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
INSERT INTO dealerships ( dealership_id,name, address, phone)
VALUES ('344','Auto Sport','593Pine','345-245-1234');
INSERT INTO vehicles (VIN, SOLD)
VALUES ('12345678901234567', FALSE);
INSERT INTO inventory (dealership_id, VIN)
VALUES (1, '12345678901234567');
INSERT INTO sales_contracts (VIN)
VALUES ('12345678901234567');

INSERT INTO lease_contracts (VIN)
VALUES ('12345678901234567');