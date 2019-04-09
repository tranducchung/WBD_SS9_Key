CREATE TABLE Customers
(
  customer_number INT AUTO_INCREMENT NOT NULL,
  fullname        VARCHAR(50),
  address         VARCHAR(255),
  email           VARCHAR(255),
  phone           INT,
  PRIMARY KEY (customer_number)
);
CREATE TABLE Accounts
(
  account_number  INT AUTO_INCREMENT NOT NULL,
  account_type    VARCHAR(255)       NOT NULL,
  date            INT                NOT NULL,
  balance         DOUBLE,
  customer_number INT                NOT NULL,
  PRIMARY KEY (account_number),
  FOREIGN KEY (customer_number) REFERENCES Customers (customer_number)
);
CREATE TABLE Transactions
(
  tran_number     INT AUTO_INCREMENT NOT NULL,
  account_number  INT                NOT NULL,
  customer_number INT                NOT NULL,
  date            INT                NOT NULL,
  amounts         DOUBLE,
  descriptionts   VARCHAR(255),
  PRIMARY KEY (tran_number),
  FOREIGN KEY (account_number) REFERENCES Accounts (account_number)
)
