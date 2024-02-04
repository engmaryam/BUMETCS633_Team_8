-- Create Database if not exists
CREATE DATABASE IF NOT EXISTS budget_buddy_app;

-- Use the created database
USE budget_buddy_app;

-- Table for User
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
    -- Add other user-related fields as needed
);

-- Table for Income
CREATE TABLE IF NOT EXISTS income (
    id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    source VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    -- Add other income-related fields as needed
    FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Table for Expenses
CREATE TABLE IF NOT EXISTS expenses (
    id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    -- Add other expense-related fields as needed
    FOREIGN KEY (user_id) REFERENCES user(id)
);
