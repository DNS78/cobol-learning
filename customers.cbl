IDENTIFICATION DIVISION.
       PROGRAM-ID. CUSTOMERS.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CUSTOMER-NAME   PIC X(20).
       01 WS-AMOUNT          PIC 9(5)V99.
       01 WS-TOTAL-SALES     PIC 9(7)V99 VALUE 0.

       PROCEDURE DIVISION.
           MOVE 'ACME CORP'  TO WS-CUSTOMER-NAME
           MOVE 1500.00      TO WS-AMOUNT
           DISPLAY 'Customer : ' WS-CUSTOMER-NAME
           DISPLAY 'Amount   : ' WS-AMOUNT
           ADD WS-AMOUNT TO WS-TOTAL-SALES

           MOVE 'GLOBEX'     TO WS-CUSTOMER-NAME
           MOVE 2750.50      TO WS-AMOUNT
           DISPLAY 'Customer : ' WS-CUSTOMER-NAME
           DISPLAY 'Amount   : ' WS-AMOUNT
           ADD WS-AMOUNT TO WS-TOTAL-SALES

           MOVE 'INITECH'    TO WS-CUSTOMER-NAME
           MOVE 890.75       TO WS-AMOUNT
           DISPLAY 'Customer : ' WS-CUSTOMER-NAME
           DISPLAY 'Amount   : ' WS-AMOUNT
           ADD WS-AMOUNT TO WS-TOTAL-SALES

           MOVE 'ROLEX'      TO WS-CUSTOMER-NAME
           MOVE 5000         TO WS-AMOUNT
           DISPLAY 'Customer : 'WS-CUSTOMER-NAME
           DISPLAY 'Amount   : 'WS-AMOUNT
           ADD WS-AMOUNT TO WS-TOTAL-SALES

           DISPLAY '----------------------------'
           DISPLAY 'Total Sales : ' WS-TOTAL-SALES
           STOP RUN.
