IDENTIFICATION DIVISION.
PROGRAM-ID. AIRLINE-TICKET.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.

INPUT-OUTPUT SECTION.
FILE-CONTROL.

DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.
01 CUSTOMER-INFO.
    05 CUSTOMER-NAME PIC X(30).
    05 DEPARTURE-TIME PIC XX:XX.
    05 DESTINATION PIC X(30).
    05 TICKET-NUMBER PIC X(8).

PROCEDURE DIVISION.
BEGIN.
    PERFORM UNTIL END-OF-FILE
        READ CUSTOMER-INFO FROM EXTERNAL API
        ADD 1 TO TICKET-NUMBER
        PRINT TICKET WITH CUSTOMER INFO
    END-PERFORM
END PROGRAM AIRLINE-TICKET.
