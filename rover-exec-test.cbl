       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROVER-EXEC-TEST.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ROVER.
           02 COORDS.
               03 X-COORD  PIC 9(2).
               03 Y-COORD  PIC 9(2).
           02 FACING   PIC X(1).
       01  INSTRUCTIONS            PIC X(100).
       01  EXPECTED-COORDS         PIC X(4).
       LINKAGE SECTION.
       COPY 'test-context.cpy'.
       PROCEDURE DIVISION USING TEST-CONTEXT.
       MAIN-PROCEDURE.
            PERFORM TURN-LEFT-N-TO-W-TEST.
            PERFORM TURN-LEFT-W-TO-S-TEST.
            PERFORM TURN-LEFT-S-TO-E-TEST.
            PERFORM TURN-LEFT-E-TO-N-TEST.
            PERFORM TURN-RIGHT-N-TO-E-TEST.
            PERFORM TURN-RIGHT-E-TO-S-TEST.
            PERFORM TURN-RIGHT-S-TO-W-TEST.
            PERFORM TURN-RIGHT-W-TO-N-TEST.
            PERFORM MOVE-FORWARD-FACING-N-TEST.
            PERFORM MOVE-FORWARD-FACING-E-TEST.
            PERFORM MOVE-FORWARD-FACING-S-TEST.
            PERFORM MOVE-FORWARD-FACING-W-TEST.
            PERFORM MOVE-BACK-FACING-N-TEST.
            PERFORM MOVE-BACK-FACING-E-TEST.
            PERFORM MOVE-BACK-FACING-S-TEST.
            PERFORM MOVE-BACK-FACING-W-TEST.
            PERFORM SEQUENCE-OF-INSTRUCTIONS-TEST.
            GOBACK.

       TURN-LEFT-N-TO-W-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'N' TO FACING.
           MOVE 'L#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-LEFT-N-TO-W-TEST',
                               'W', FACING.

       TURN-LEFT-W-TO-S-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'W' TO FACING.
           MOVE 'L#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-LEFT-W-TO-S-TEST',
                               'S', FACING.

       TURN-LEFT-S-TO-E-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'S' TO FACING.
           MOVE 'L#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-LEFT-S-TO-E-TEST',
                               'E', FACING.

       TURN-LEFT-E-TO-N-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'E' TO FACING.
           MOVE 'L#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-LEFT-E-TO-N-TEST',
                               'N', FACING.

       TURN-RIGHT-N-TO-E-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'N' TO FACING.
           MOVE 'R#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-RIGHT-N-TO-E-TEST',
                               'E', FACING.

       TURN-RIGHT-E-TO-S-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'E' TO FACING.
           MOVE 'R#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-RIGHT-E-TO-S-TEST',
                               'S', FACING.

       TURN-RIGHT-S-TO-W-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'S' TO FACING.
           MOVE 'R#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-RIGHT-S-TO-W-TEST',
                               'W', FACING.

       TURN-RIGHT-W-TO-N-TEST.
           MOVE 0 TO X-COORD, Y-COORD.
           MOVE 'W' TO FACING.
           MOVE 'R#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'TURN-RIGHT-W-TO-N-TEST',
                               'N', FACING.

       MOVE-FORWARD-FACING-N-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'N' TO FACING.

           MOVE 'F#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-FORWARD-FACING-N-TEST',
                               '0506', COORDS.

       MOVE-FORWARD-FACING-E-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'E' TO FACING.

           MOVE 'F#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-FORWARD-FACING-E-TEST',
                               '0605', COORDS.

       MOVE-FORWARD-FACING-S-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'S' TO FACING.

           MOVE 'F#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-FORWARD-FACING-S-TEST',
                               '0504', COORDS.

       MOVE-FORWARD-FACING-W-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'W' TO FACING.

           MOVE 'F#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-FORWARD-FACING-W-TEST',
                               '0405', COORDS.

       MOVE-BACK-FACING-N-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'N' TO FACING.

           MOVE 'B#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-BACK-FACING-N-TEST',
                               '0504', COORDS.

       MOVE-BACK-FACING-E-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'E' TO FACING.

           MOVE 'B#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-BACK-FACING-E-TEST',
                               '0405', COORDS.

       MOVE-BACK-FACING-S-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'S' TO FACING.

           MOVE 'B#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-BACK-FACING-S-TEST',
                               '0506', COORDS.

       MOVE-BACK-FACING-W-TEST.
           MOVE '0505' TO COORDS.
           MOVE 'W' TO FACING.

           MOVE 'B#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'MOVE-BACK-FACING-W-TEST',
                               '0605', COORDS.

       SEQUENCE-OF-INSTRUCTIONS-TEST.
           MOVE '0505N' TO ROVER.
           MOVE 'RRFFF#' TO INSTRUCTIONS.

           CALL 'ROVER-EXEC' USING ROVER, INSTRUCTIONS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'SEQUENCE-OF-INSTRUCTIONS-TEST',
                               '0502', COORDS.

           CALL 'ASSERT-TXT-EQUAL' USING TEST-CONTEXT,
                               'SEQUENCE-OF-INSTRUCTIONS-TEST',
                               'S', FACING.


       END PROGRAM ROVER-EXEC-TEST.
