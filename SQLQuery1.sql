CREATE DATABASE RESTAURANT
USE RESTAURANT

CREATE TABLE Meal (
    id INT PRIMARY KEY IDENTITY,
    [Name] VARCHAR(20) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Tab (
    id INT PRIMARY KEY IDENTITY,
    number INT NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE Ord (
    id INT PRIMARY KEY IDENTITY,
    Tab_id INT,
    Meal_id INT,
    quantity INT NOT NULL,
    order_time DATETIME NOT NULL,
    FOREIGN KEY (Tab_id) REFERENCES Tab(id),
    FOREIGN KEY (Meal_id) REFERENCES Meal(id)
);

 SELECT*FROM Meal, Tab, Ord;