       IDENTIFICATION DIVISION.
       PROGRAM-ID.  ARITHMETIQUE.
       AUTHOR.  AMN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM1                                PIC 9.
       01  NUM2                                PIC 9.
       01  RESULT                              PIC 99.
       01  RST                              PIC 99.
	   
       PROCEDURE DIVISION.
           DISPLAY "ENTREE LE PREMIER NOMBRE (1 CARACTERE) :"
           ACCEPT NUM1
           DISPLAY "ENTREE LE DEUXIEME NOMBRE (1 CARACTERE):"
           ACCEPT NUM2
      *     Addition
           ADD NUM1 NUM2 GIVING RESULT
           DISPLAY "RESULTAT Addition  = ", RESULT
           COMPUTE RESULT= NUM1 + NUM2
           DISPLAY "RESULTAT Addition  = ", RESULT		   
      *     Multiplication
           MULTIPLY NUM1 BY NUM2 GIVING RESULT
           DISPLAY "RESULTAT Multiplication = ", RESULT
           COMPUTE RESULT= NUM1 * NUM2
           DISPLAY "RESULTAT Multiplication = ", RESULT		   
      *    Soustraction
           SUBTRACT NUM1 FROM NUM2 GIVING RESULT
           DISPLAY "RESULTAT Multiplication = ", RESULT
      *    Division
      *une division par zero provoque un abend system S0C9 , REMAINDER:reste	  
           DIVIDE NUM1 BY NUM2 GIVING RESULT REMAINDER	RST
           DISPLAY "RESULTAT Division = ", RESULT
           DISPLAY "Le reste = ", RESULT
		   
           STOP RUN.
       END PROGRAM ARITHMETIQUE.
