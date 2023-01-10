* Aim: 
* Design a COBOL program to calculate the total amount of money in a savings account.
* The program should prompt the user to enter the current balance of the savings account,
* the annual interest rate, and the number of years the money will remain in the account.
* The program should then calculate and display the total amount of money in the account after the specified number of years,
* taking into account the annual interest rate.
* The program should also display the total amount of interest earned on the savings account over the course of the years.

IDENTIFICATION DIVISION.
PROGRAM-ID. SAVINGS_ACCOUNT_CALCULATION.
AUTHOR. Your Name.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 BALANCE PIC 9(7)V99.
01 INTEREST-RATE PIC 9(4)V9.
01 YEARS PIC 9(2).
01 TOTAL-AMOUNT PIC 9(7)V99.
01 TOTAL-INTEREST PIC 9(7)V99.

PROCEDURE DIVISION.
BEGIN.
DISPLAY "Please enter the current balance of the savings account:".
ACCEPT BALANCE.
DISPLAY "Please enter the annual interest rate (percent):".
ACCEPT INTEREST-RATE.
DISPLAY "Please enter the number of years the money will remain in the account:".
ACCEPT YEARS.

COMPUTE TOTAL-AMOUNT = BALANCE * (1 + INTEREST-RATE / 100)**YEARS.
DISPLAY "The total amount in the account after the specified number of years is: " TOTAL-AMOUNT.
COMPUTE TOTAL-INTEREST = TOTAL-AMOUNT - BALANCE.
DISPLAY "The total amount of interest earned on the savings account over the years is: " TOTAL-INTEREST.

STOP RUN.
END PROGRAM SAVINGS_ACCOUNT_CALCULATION.
