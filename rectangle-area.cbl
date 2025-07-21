       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECTANGLE-AREA.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WIDTH         PIC 9(5).
       01 LENGTH        PIC 9(5).
       01 AREA          PIC 9(10).
       01 WS-DONE       PIC X VALUE 'N'.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "===== Rectangle Area Calculator =====".
           PERFORM UNTIL WS-DONE = 'Y'
               DISPLAY "Enter width: "
               ACCEPT WIDTH
               DISPLAY "Enter length: "
               ACCEPT LENGTH

               COMPUTE AREA = WIDTH * LENGTH

               DISPLAY "Area is: " AREA

               DISPLAY "Do you want to calculate again? (Y/N): "
               ACCEPT WS-DONE
               MOVE FUNCTION UPPER-CASE(WS-DONE) TO WS-DONE
           END-PERFORM

           DISPLAY "Goodbye!".
           STOP RUN.
