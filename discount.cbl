IDENTIFICATION DIVISION.
       PROGRAM-ID. DISCOUNT.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-PRICE         PIC 9(5)V99 VALUE 299.99.
       01 WS-QUANTITY      PIC 9(3)    VALUE 2.
       01 WS-TOTAL         PIC 9(7)V99 VALUE 0.
       01 WS-DISCOUNT      PIC 9(5)V99 VALUE 0.
       01 WS-FINAL-TOTAL   PIC 9(7)V99 VALUE 0.

       PROCEDURE DIVISION.
           MULTIPLY WS-PRICE BY WS-QUANTITY GIVING WS-TOTAL
           
           IF WS-TOTAL > 1000
               DISPLAY 'Large order - 10% discount applied'
               MULTIPLY WS-TOTAL BY 0.10 GIVING WS-DISCOUNT
               SUBTRACT WS-DISCOUNT FROM WS-TOTAL GIVING WS-FINAL-TOTAL
           ELSE 
               DISPLAY 'Standard order - no discount'
               MOVE WS-TOTAL TO WS-FINAL-TOTAL
           END-IF
           
           DISPLAY 'Subtotal           :' WS-TOTAL
           DISPLAY 'Discount           :' WS-DISCOUNT
           DISPLAY 'Final Total        :' WS-FINAL-TOTAL
           STOP RUN.
