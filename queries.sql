-- using the firstliveproject database
use firstliveproject;

-- viewing all data from accountsdata table
select * from accountsdata;

-- finding rows with null account_id in accountsdata
select * from accountsdata where account_id is null;

-- finding rows with null customer_id in accountsdata
select * from accountsdata where customer_id is null;

-- finding distinct rows in accountsdata
select distinct * from accountsdata;

-- counting total rows in accountsdata
select count(*) from accountsdata;

-- finding rows where account_id is an empty string
select * from accountsdata where account_id = '';

-- deleting rows where account_id is an empty string
delete from accountsdata where account_id = '';

-- deleting rows with account_id not in distinct account_id list
delete from accountsdata where account_id not in (select distinct account_id from accountsdata);

-- creating a new table with distinct data from accountsdata
create table daccountdata as (select distinct * from accountsdata);
select * from daccountdata;

-- grouping by customer_id, branch_id, account_type, and balance, and selecting groups with at least one record
select customer_id, branch_id, account_type, balance 
from accountsdata 
group by customer_id, branch_id, account_type, balance 
having count(customer_id) >= 1;

-- viewing all data from accountsdata
select * from accountsdata;

-- rolling back the last transaction
rollback;

-- deleting duplicate rows based on account_id, keeping the row with the smallest account_id
delete from accountsdata 
where account_id not in (select min(account_id) from accountsdata group by account_id);

-- deleting duplicate rows based on account_id, keeping only one
delete from accountsdata 
where account_id in (
  select account_id 
  from accountsdata
  group by account_id
  having count(account_id) >= 2
);

-- adding row numbers to each row in accountsdata
select a.*, row_number() over() as rn from accountsdata a;

-- deleting duplicate rows again based on account_id
delete from accountsdata 
where account_id in (
  select account_id 
  from accountsdata 
  group by account_id 
  having count(account_id) >= 2
);

-- viewing all data from branches table
select * from branches;

-- viewing all data from customersdata table
select * from customersdata;

-- deleting rows with empty customer_id in customersdata
delete from customersdata where customer_id = '';

-- finding distinct rows in customersdata
select distinct * from customersdata;

-- creating a new table with distinct data from customersdata
create table dcustomersdata as (select distinct * from customersdata);
select * from dcustomersdata;

-- counting and listing phone numbers that appear more than twice
select count(phone), phone from dcustomersdata group by phone having count(phone) > 2;

-- counting and listing phone numbers that appear more than once
select count(phone), phone from dcustomersdata group by phone having count(phone) > 1;

-- grouping by phone, first_name, last_name, and email, and selecting groups with more than two occurrences
select first_name, last_name, email, phone 
from dcustomersdata 
group by phone, first_name, last_name, email 
having count(phone) > 2;

-- grouping by customer_id and selecting groups with at least one occurrence
select customer_id, phone 
from dcustomersdata 
group by customer_id 
having count(customer_id) >= 1;

-- finding rows with phone numbers less than 12 characters long
select * from dcustomersdata where length(phone) < 12;

-- finding rows with phone numbers less than 11 characters long
select * from dcustomersdata where length(phone) < 11;

-- finding distinct email addresses in dcustomersdata
select distinct(email) from dcustomersdata;

-- counting and listing email addresses that appear more than twice
select count(email), email from dcustomersdata group by email having count(email) > 2;

-- finding rows with empty email fields
select * from dcustomersdata where email = '';

-- viewing all data from kyc table
select * from kyc;

-- finding distinct rows in kyc
select distinct * from kyc;

-- viewing all data from loans1 table
select * from loans1;

-- finding rows in loans1 where loan_id is an empty string
select * from loans1 where loan_id = '';

-- viewing all data from payments table
select * from payments;

-- finding distinct rows in payments
select distinct * from payments;

-- viewing all data from transactionsdata table
select * from transactionsdata;

-- finding distinct rows in transactionsdata
select distinct * from transactionsdata;

-- counting transaction_id and grouping by account_id, selecting groups with more than one occurrence
select count(transaction_id), account_id 
from transactionsdata 
group by transaction_id, account_id 
having count(transaction_id) > 1;

-- grouping by customer_id and selecting groups with at least one occurrence
select customer_id, phone 
from dcustomersdata 
group by customer_id 
having count(customer_id) >= 1;

-- creating a new table with distinct data from transactionsdata
create table dtransactionsdata as (select distinct * from transactionsdata);
select * from dtransactionsdata;

-- final tables data counts
select * from daccountdata;
select * from branches;
select * from dcustomersdata;
select * from loans1;
select * from payments;
select * from dtransactionsdata;

-- altering daccountdata table structure
alter table daccountdata modify column account_id int;
alter table daccountdata modify column customer_id int;
alter table daccountdata modify column branch_id int;
alter table daccountdata modify column account_type varchar(20);

-- altering branches table structure
alter table branches modify column branch_name varchar(20);
alter table branches modify column branch_address varchar(40);

-- altering dcustomersdata table structure
alter table dcustomersdata modify column customer_id int;
alter table dcustomersdata modify column first_name varchar(20);
alter table dcustomersdata modify column last_name varchar(20);
alter table dcustomersdata modify column email varchar(50);
alter table dcustomersdata modify column phone varchar(52);
alter table dcustomersdata modify column address varchar(200);

-- altering loans1 table structure
alter table loans1 modify column loan_id varchar(10);
alter table loans1 modify column customer_id int;
alter table loans1 modify column loan_type varchar(10);
alter table loans1 modify column loan_amount double;
alter table loans1 modify column interest_rate varchar(10);
alter table loans1 modify column loan_status varchar(10);

-- committing changes
commit;

-- altering payments table structure
alter table payments modify column payment_id int;
alter table payments modify column loan_id int;
alter table payments modify column payment_amount double;

-- altering dtransactionsdata table structure
alter table dtransactionsdata modify column transaction_id int;
alter table dtransactionsdata modify column account_id int;
alter table dtransactionsdata modify column transaction_type varchar(20);
