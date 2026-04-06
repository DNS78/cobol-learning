IDENTIFICATION DIVISION.
       PROGRAM-ID.SALESREPORT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-COUNTER        PIC 9(3)    VALUE 1.
       01 WS-AMOUNT         PIC 9(5)V99 VALUE 0.
       01 WS-TOTAL          PIC 9(7)V99 VALUE 0.
       01 WS-HIGH-SALES     PIC 9(7)V99 VALUE 0.
       01 WS-LOW-SALES      PIC 9(7)V99 VALUE 0.

       PROCEDURE DIVISION.
           PERFORM UNTIL WS-COUNTER > 6
               EVALUATE WS-COUNTER
                   WHEN 1 MOVE 1200.00 TO WS-AMOUNT
                   WHEN 2 MOVE 450.00  TO WS-AMOUNT
                   WHEN 3 MOVE 3200.00 TO WS-AMOUNT
                   WHEN 4 MOVE 800.00  TO WS-AMOUNT
                   WHEN 5 MOVE 2100.00 TO WS-AMOUNT
                   WHEN 6 MOVE 600.00  TO WS-AMOUNT
               END-EVALUATE

               IF WS-AMOUNT > 1000
                   DISPLAY 'HIGH SALE - Record ' WS-COUNTER
                   ' Amount: ' WS-AMOUNT
                   ADD WS-AMOUNT TO WS-HIGH-SALES
               ELSE
                   DISPLAY 'LOW SALE - Record ' WS-COUNTER
                   ' Amount: ' WS-AMOUNT
                   ADD WS-AMOUNT TO WS-LOW-SALES
               END-IF

               ADD WS-AMOUNT TO WS-TOTAL
               ADD 1 TO WS-COUNTER
           END-PERFORM

           DISPLAY '----------------------------'
           DISPLAY 'Total Sales       : ' WS-TOTAL
           DISPLAY 'High Sales        : ' WS-HIGH-SALES
           DISPLAY 'Low Sales         : ' WS-LOW-SALES
           STOP RUN.
