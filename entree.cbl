       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTREE.
       AUTHOR.  AMN.	   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STUDENTDETAILS.
       02  STUDENTID       PIC 9(7).
       02 NOM              PIC X(10).
       02  COURSECODE      PIC X(4).
       02  GENDER          PIC X.
      * YYMMDD
       01 CURRENTDATE.
       02  CURRENTYEAR     PIC 9(4).
       02  CURRENTMONTH    PIC 99.
       02  CURRENTDAY      PIC 99.
      * YYDDD
       01 DAYOFYEAR.
       02  FILLER          PIC 9(4).
       02  YEARDAY         PIC 9(3).
      * HHMMSSSS   S = S/100
       01 CURRENTTIME.
       02  CURRENTHOUR     PIC 99.
       02  CURRENTMINUTE   PIC 99.
       02  FILLER          PIC 9(4).
       PROCEDURE DIVISION.
       DISPLAY "Entree les details comme decrit ".
       DISPLAY "ID 7 caracteres apres le NOM sur 10 ..etc :"
       DISPLAY "-----------------------------------------------------".
       ACCEPT  STUDENTDETAILS
       ACCEPT  CURRENTDATE FROM DATE YYYYMMDD
       ACCEPT  DAYOFYEAR FROM DAY YYYYDDD.
       ACCEPT  CURRENTTIME FROM TIME.
       DISPLAY "LE NOM EST ", NOM
       DISPLAY "LA DATE EST:" CURRENTDAY CURRENTMONTH SPACE CURRENTYEAR
       DISPLAY "DATE DU JOUR " YEARDAY " OF THE YEAR"
       DISPLAY "L HEURE: " CURRENTHOUR ":" CURRENTMINUTE
	   
       STOP RUN.
       END PROGRAM ENTREE.
