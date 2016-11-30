# [Bank tech test](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

For more details click on the link above.

## Setup

0. Clone this directory
1. If rspec is not already installed run ```gem install rspec```
2. To run tests, from the app root run ```rspec```
3. Load the program into ```irb``` with ```require './lib/app```
4. Interact with thte program, as outlined below

## The program

There are three classes, an Account class, which creates and stores Transactions, and a Bank class, which has functionality to print Account statements.

### Account

Acount is initialized with #customer_full_name as the first and only mandatory argument. It can additionally have an integer or float passed into it as a second argumnet to represent the opening balance, if not provided this defaults to 100. It has the following methods:

+ #customer_full_name - set or get the customer's name
+ #current_balance - set or get the current account balance
+ #pay_in(sum, date) and #pay_out(sum, date) - takes a sum as a mandatory object, with the option of setting a date (today by default), creates a Transaction object with the paramaters passed in and calls #update_balance.
+ #update_balance - takes a Transaction object (passed in from #pay_in or #pay_out) and updates #current_balance accordingly.

### Transaction

Transaction is initialized with a Date object, a balance change (positive or negative float or integer) and an intial balance (positive or negative float or integer).

### Bank

Bank has three class methods:

::print_headings - puts table headings for the statement
::print_transactions(account) - prints table rows for each Transaction object in the account's #transaction_history array
::print_statement(account) - prints an statement for the Account object passed to it by calling #print_headings and then #print_transactions(account)