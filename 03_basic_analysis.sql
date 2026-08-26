Use RetailBanking;


-- 1.What is the total number of customers?

select count(1)  as Total_Customers from customers;

-- 2.What is the total number of accounts?

select count(1) as Total_Accounts from accounts;

-- 3.What are the different account types available?

select distinct account_type as Account_Types from accounts;

-- 4.How many customers are currently active?

select count(1) as Customers_count from customers c join loans a
on c.customer_id=a.customer_id where loan_status='Active';

-- 5.What are the different transaction types available?

select distinct transaction_type from transactions;

-- 6.What is the total amount of completed transactions?

select sum(amount) as Total_Amount from transactions 
where status='completed';

-- 7.What are the different loan types available?

select distinct loan_type from loans ;

-- 8.What is the total number of loans?

select count(1) as total_loans from loans;

-- 9.What are the different card types available?

select distinct card_type from cards;

-- 10.What is the total outstanding loan balance?

select sum(outstanding_balance) as total_outstanding_balance from loans;


-- Basic Analysis: Key Insights

-- The bank serves customers across multiple segments, enabling targeted banking strategies.
-- Account balances and usage indicate different levels of customer engagement.
-- Transaction patterns help identify active customers and understand overall banking activity.
-- Customer, account, transaction, and loan data provide a clear view of overall banking performance.