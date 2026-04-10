# 🏦 Banking Transaction System

> A comprehensive SQL database project designed to manage and analyze customer banking transactions.

## 📋 Project Overview
This project simulates a backend banking system database. It includes a structured relational schema to store customer details and track their financial activities, providing a foundation for writing complex SQL queries to extract business insights.

---

## 🗄️ Database Schema

The database consists of two primary tables linked by a common foreign key.

### 1. `Customers` Table
Stores primary information regarding the bank's account holders.

| Column Name | Description |
| :--- | :--- |
| **`customer_id`** | Primary Key |
| **`name`** | Full name of the customer |
| **`email`** | Customer contact email |
| **`city`** | City of residence |
| **`account_type`** | Type of account (e.g., Savings, Current) |
| **`account_balance`** | The current total balance in the account |

### 2. `Transactions` Table
Logs every transaction made by the customers.

| Column Name | Description |
| :--- | :--- |
| **`transaction_id`** | Primary Key |
| **`customer_id`** | Foreign Key (References `Customers` table) |
| **`amount`** | The monetary value of the transaction |
| **`transaction_type`** | Credit, Debit, etc. |
| **`transaction_mode`** | Method of payment (e.g., UPI, Card, NetBanking) |
| **`transaction_date`** | Timestamp of when the transaction occurred |

---

## 🧠 SQL Concepts Utilized

This project demonstrates proficiency in querying relational databases using:
* **Basic Retrieval:** `SELECT`, `WHERE`, `ORDER BY`
* **Aggregation:** `GROUP BY`, `HAVING`, Aggregate Functions (`SUM`, `AVG`)
* **Relational Mapping:** `JOIN`
* **Advanced Functions:** Window functions like `DENSE_RANK()`

---

## 📝 Key Queries & Analysis

The included `.sql` scripts answer the following business questions:
1. Fetching customers with an account balance over a specific threshold.
2. Displaying all transactions sorted by date.
3. Identifying all unique transaction modes used by the customer base.
4. Retrieving the top 5 highest transaction amounts.
5. Filtering customers by specific name patterns using `LIKE`.
6. Calculating the total transaction amount per customer.
7. Finding customers whose total transaction volume exceeds a set limit.
8. Joining customer details with their transaction history for a unified view.
9. Ranking customers based on their account balance using window functions.
10. Identifying customers whose average transaction amount exceeds the overall average.

---

## 🛠️ Tools Used

* **Database Engine:** MySQL Workbench
* **Version Control:** GitHub
