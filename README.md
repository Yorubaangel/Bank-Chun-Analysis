# Details

### About

This is a customer churn analysis, this is to identify and understand the factors that contribute to customers stopping doing business with the bank. In other to know how to put in place plans to retain customers and reduce turnover

### Table of Contents
- [Purposes of the Project](#purposes-of-the-project)
- [Tool](#tool)
- [Analysis List](#analysis-list)
- [Approach Used](#approach-used)
- [Generic Questions](#generic-questions)
- [Generic Answers](#generic-answers)

### Purposes of the Project

The major aim of the project is to gain insight into the bank customers’ information and understand the different factors that affect the customers to make the decisions of leaving or staying.

### Tools
- SQL Database - Data Cleaning and sorting
- Excel - Visualization

### Analysis List

1. Bank Analysis
   
   Analyze the customer’s transactions to understand more and to gain insight into their activities and relationship with the bank, to also know which account is active or not.

2. Customer Analysis

   This analysis aims to uncover the different customer segments, their surnames, years of engagement products, and the commitment of each customer to the bank over their different years of registering with the bank

### Approach Used

1. Data cleaning:
This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace missing or NULL values.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. There are no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.

2. Feature Engineering:
This will help us generate some new columns from existing ones.
- Add a new column named `ActiveStatus` to give insight into the active customers and those that are not. This will help answer the question of which account still banks with them
- Add a new column named `CrCardCategory` This column helps us to know which customer is a credit card holder and which is not a credit card holder.
- Add a new column named `Surname` this is majorly for clear identification of the owner of each account. This will help to give distinct clarification on which customer we are dealing with.
- Add a new column named `ExitCategory` this is to know those who are current customers and those who have left the bank
- Add a new column named `Sex` this is to categorize the gender of their customers, this can be used to know which gender is best attracted to their bank and this can help the bank know the next line of action.
- Add a new column named `Location` this is basically to know the geographical location of each customer
- Add a new column named `CrdMeasure` this is to know each customer's performance based on their credit data/details, it helps banks to know each of their customers well and how to appreciate them well in the future.

3. Exploratory Data Analysis (EDA):
Exploratory data analysis is done to answer the listed questions and aims of this project.

### Generic Questions:
1.	Count of customers
2.	Average balance
3.	Average salary
4.	Average Tenure
5.	Female ratio

### Generic Answers
1.	Count of customers = 1000
2.	Average balance = 78074.76
3.	Average salary = 98487.82
4.	Average Tenure = 4.918
5.	Female count = 467
6.	Female ratio = 214%

### Further questions with visualizations

