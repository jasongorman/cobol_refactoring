       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROVER-SUITE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       COPY 'test-context.cpy'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Running ROVER tests...".

           CALL 'ROVER-EXEC-TEST' USING TEST-CONTEXT.

           DISPLAY 'Tests run: ' TESTS-RUN.
           DISPLAY 'Passed: ' PASSES.
           DISPLAY 'Failed: ' FAILURES.

       END PROGRAM ROVER-SUITE.
