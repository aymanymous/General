       IDENTIFICATION DIVISION.
       PROGRAM-ID. AMN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 CHOICE PIC 9.
       SCREEN SECTION.
       01 MAIN-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "************************************".
           02 LINE 2 COL 1 VALUE "        MULTIPLE CHOIX SREEN        ".
           02 LINE 3 COL 1 VALUE "************************************".
           02 LINE 4 COL 1 VALUE "1. TO WRITE                       ".
           02 LINE 5 COL 1 VALUE "2. TO READ                        ".
           02 LINE 6 COL 1 VALUE "3. TO MANAGEMENT                  ".
           02 LINE 7 COL 1 VALUE "4. EXIT                             ".
           02 LINE 8 COL 1 VALUE "ENTER YOUR CHOICE :                 ".
       01 WRITE-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "Executing  WRITE".
       01 READ-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "Executing  READ".
       01 MANAGE-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "Executing MANAGEMENT".
       01 ERROR-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "Invalid choice. Please try again.".
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY MAIN-SCREEN.
           ACCEPT CHOICE AT LINE 8 COL 23
           EVALUATE CHOICE
               WHEN 1
                   PERFORM P-WRITE
               WHEN 2
                   PERFORM P-READ
               WHEN 3
                   PERFORM P-MANAGE
               WHEN 4
                   STOP RUN
               WHEN OTHER
                 DISPLAY ERROR-SCREEN
                 PERFORM MAIN-PARA
           END-EVALUATE .


       P-WRITE.
           DISPLAY WRITE-SCREEN
           .

       P-READ.
           DISPLAY READ-SCREEN
           .

       P-MANAGE.
           DISPLAY MANAGE-SCREEN
           .
