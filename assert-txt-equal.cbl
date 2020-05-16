       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASSERT-TXT-EQUAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       COPY 'test-context.cpy'.
       01  TEST-NAME   PIC X(30).
       01  EXPECTED    PIC X(4).
       01  ACTUAL      PIC X(4).
       PROCEDURE DIVISION USING TEST-CONTEXT, TEST-NAME,
                                           EXPECTED, ACTUAL.
       MAIN-PROCEDURE.
           ADD 1 to TESTS-RUN.

           IF ACTUAL = EXPECTED THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'FAILED: ' TEST-NAME '. Expected '
               EXPECTED
               DISPLAY ' but was ' ACTUAL
               ADD 1 TO FAILURES.

           GOBACK.
       END PROGRAM ASSERT-TXT-EQUAL.
