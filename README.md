### Project Overview:

**Project Name**: Banking Analytics Dashboard

**Objective**: 
The aim of this project is to provide a comprehensive analytical view of various banking operations, including account balances, loans, payments, transactions, and customer data, through an interactive Power BI dashboard. 

### Components and Functionality:

1. **Database Schema**:
   - Tables involved:
     - `accountsdata`: Contains details about accounts.
     - `branches`: Stores information about different branches.
     - `customersdata`: Contains customer information.
     - `kyc`: Stores KYC (Know Your Customer) data.
     - `loans1`: Contains loan details.
     - `payments`: Stores payment details.
     - `transactionsdata`: Contains transaction details.

2. **SQL Queries**:
   - Data cleaning steps such as removing duplicates, handling null values, and standardizing data types.
   - Grouping and aggregating data to summarize key metrics.
   - Creating new tables (`daccountdata`, `dcustomersdata`, `dtransactionsdata`) with distinct records for better data integrity.

3. **Dashboard Elements**:
   - **KPIs (Key Performance Indicators)**:
     - Total Account Balance
     - Total Loan Amount
     - Total Transactions
     - Total Payments
     - Total Customers
     - Loans Taken by Customers
   - **Visualizations**:
     - Line and bar charts for trends in account balances and transactions by branch.
     - Treemap showing the sum of loan amounts by loan type.
     - Pie chart illustrating recovery rates by loan type.
     - Line and bar charts for withdrawal and deposit transactions by branch.
     - A goal indicator showing the difference between recovered loan amounts and total loan amounts.

4. **Filters**:
   - Dropdown filters for loan type, branch name, account type, interest rate, transaction type, and KYC status to allow users to customize their views.

### Project Explanation:

**Banking Analytics Dashboard** provides a detailed analysis of key banking metrics, allowing stakeholders to monitor and evaluate the performance of different branches and loan products. It showcases the bank's financial health, customer distribution, and transactional activities. The dashboard includes:
- Key metrics summarizing total balances, loans, payments, and customer counts.
- Visual insights into the distribution of loan amounts and transaction types.
- Recovery rates and customer engagement metrics.

The SQL scripts used in this project focus on cleaning and organizing the data, ensuring data integrity by removing duplicates and null values, and preparing it for effective analysis in Power BI.

This project is a practical demonstration of SQL data manipulation combined with Power BI's visualization capabilities, providing an effective tool for bank management to make data-driven decisions.

 ### Conclusion

The **Banking Analytics Dashboard** project effectively integrates SQL and Power BI to provide a detailed view of banking operations. Key points include:

- **Data Integrity**: SQL ensures clean and accurate data by removing duplicates, handling null values, and standardizing formats.
- **Interactive Visualizations**: Power BI offers dynamic charts and graphs, allowing for deep insights into key metrics.
- **Key Performance Indicators**: Displays Total Account Balance, Loan Amounts, Transactions, and Customer Loans for a comprehensive overview.
- **Customized Insights**: Interactive filters enable tailored views, helping users focus on specific data segments like loan types and branches.
- **Enhanced Decision-Making**: The dashboard supports data-driven decisions, improving financial analysis and management within the bank.

 
"I developed a comprehensive **Banking Analytics Dashboard** by integrating SQL for data cleaning and transformation, and Power BI for visualization. I handled various tasks including:

- **Data Cleaning and Preparation**: I used SQL to clean the data, removing duplicates, handling missing values, and ensuring data consistency.
- **Data Transformation**: I transformed raw data into meaningful insights by grouping, filtering, and aggregating relevant information.
- **Dashboard Creation**: In Power BI, I created an interactive dashboard with key performance indicators (KPIs) such as total account balance, loan amounts, and transactions.
- **Interactive Filters**: I implemented filters for loan types, branches, and customer details to allow users to drill down into specific data.
- **Visualizations**: I developed various visualizations like bar charts, line graphs, and pie charts to represent trends and metrics effectively.

The project improved data visibility and decision-making for banking operations by providing a clear, interactive, and user-friendly dashboard."
