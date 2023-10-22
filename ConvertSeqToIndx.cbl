       IDENTIFICATION DIVISION.
       PROGRAM-ID.  ConvertSeqToIndx.
       AUTHOR.  AYMANE HMIDANI.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT SeqFile ASSIGN
        TO "MYPATH/SEQ.DAT"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS SeqStatus.
       SELECT IndxFile ASSIGN
        TO "MYPATH/IDX.DAT"
                 ORGANIZATION IS INDEXED
                 ACCESS MODE IS RANDOM
                 RECORD KEY IS IndxCode
                 ALTERNATE RECORD KEY IS IndxTitle WITH DUPLICATES
                 FILE STATUS IS IndxStatus.
       DATA DIVISION.
       FILE SECTION.
       FD IndxFile.
       01 IndxRecord.
          02 IndxCode               PIC 9(5).
          02 IndxTitle              PIC X(40).
          02 IndxSupplierCode       PIC 99.

       FD SeqFile.
       01 SeqRecord.
          88   EndOfFile VALUE HIGH-VALUES.
          02 SeqCode            PIC 9(5).
          02 SeqTitle           PIC X(40).
          02 SeqSupplierCode    PIC 99.

       WORKING-STORAGE SECTION.
       77 IndxStatus   PIC 99 VALUE ZEROES.
          88 OK-IndxStatus    VALUE 00.
       77 SeqStatus   PIC 99 VALUE ZEROES.
          88 OK-SeqStatus    VALUE 00.
       PROCEDURE DIVISION.
       Begin.
          OPEN INPUT SeqFile.
                     IF NOT OK-SeqStatus
               DISPLAY "ISSUE WHILE OPENING SeqFile "
               DISPLAY "FILE-STATUS:" SeqStatus
               STOP RUN
           END-IF
          OPEN OUTPUT IndxFile.
                     IF NOT OK-IndxStatus
               DISPLAY "ISSUE WHILE OPENING IndxFile "
               DISPLAY "FILE-STATUS:" IndxStatus
               STOP RUN
           END-IF

          READ SeqFile
             AT END SET EndOfFile TO TRUE
          END-READ.
          PERFORM UNTIL EndOfFile
             WRITE IndxRecord FROM SeqRecord
                INVALID KEY DISPLAY "Indx STATUS :- ", IndxStatus
             END-WRITE
             READ SeqFile
                AT END SET EndOfFile TO TRUE
             END-READ
          END-PERFORM.

          CLOSE IndxFile
                SeqFile.
          STOP RUN.
