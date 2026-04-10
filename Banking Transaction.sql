-- 1. Fetch all customers whose account balance is greater than 1500.
select * from customers where account_balance>1500;

-- 2. Display all transactions sorted by transaction_date in descending order.
select * from transactions order by transaction_date DESC;

-- 3. Get unique transaction modes used by customers.
select distinct transaction_mode from transactions;

-- 4. Fetch top 5 highest transactions (amount).
select * from transactions order by amount desc limit 5;

-- 5. Find customers whose name starts with 'A' using LIKE.
select * from customers where name like 'A%';

-- 6. Find total transaction amount per customer.
select customer_id, SUM(amount) AS total_amount 
FROM transactions 
GROUP BY customer_id;

-- 7. Find customers whose total transaction amount is greater than 2000.
select customer_id, SUM(amount) AS total_amount from transactions group by customer_id having SUM(amount)>2000;

-- 8. Display: Customer Name, Transaction Amount, Transaction Type (using JOIN between customers & transactions)
select c.name, t.amount, t.transaction_type from customers c join transactions t ON c.customer_id = t.customer_id;

-- 9. Rank customers based on their account balance (highest first) using DENSE_RANK.
select customer_id, name, account_balance, DENSE_RANK() over(order by account_balance desc) as rank_no from customers;

-- 10. Find customers whose average transaction amount is greater than overall average
select customer_id, AVG(amount) as avg_transaction from transactions group by customer_id having AVG(amount)>(select AVG(amount) from transactions);
