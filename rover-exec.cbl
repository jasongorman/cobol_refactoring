       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROVER-EXEC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-INSTRUCTIONS     PIC X(100).
       01  WS-INSTR-ARRAY REDEFINES WS-INSTRUCTIONS.
           02 WS-INSTRUCTION  PIC X(1) OCCURS 100 TIMES.
       01  WS-INSTR-INDEX      PIC 9(3).
       LINKAGE SECTION.
       01 ROVER.
           02 COORDS.
               03 X-COORD  PIC 9(2).
               03 Y-COORD  PIC 9(2).
           02 FACING   PIC X(1).
       01  INSTRUCTIONS    PIC X(100).
       PROCEDURE DIVISION USING ROVER, INSTRUCTIONS.
       MAIN-PROCEDURE.

           MOVE INSTRUCTIONS TO WS-INSTRUCTIONS.

           MOVE 0 TO WS-INSTR-INDEX.

           PERFORM EXEC-INSTRUCTION UNTIL WS-INSTR-INDEX = 100.

           GOBACK.

       EXEC-INSTRUCTION.

           ADD 1 TO WS-INSTR-INDEX.

           IF WS-INSTRUCTION(WS-INSTR-INDEX) = '#' THEN
               GOBACK.

           IF WS-INSTRUCTION(WS-INSTR-INDEX) = 'L' THEN
               EVALUATE TRUE
                   WHEN FACING = 'N'
                       MOVE 'W' TO FACING
                   WHEN FACING = 'W'
                       MOVE 'S' TO FACING
                   WHEN FACING = 'S'
                       MOVE 'E' TO FACING
                   WHEN FACING = 'E'
                       MOVE 'N' TO FACING
               END-EVALUATE
               EXIT PARAGRAPH.

           IF WS-INSTRUCTION(WS-INSTR-INDEX) = 'R' THEN
               EVALUATE TRUE
                   WHEN FACING = 'N'
                       MOVE 'E' TO FACING
                   WHEN FACING = 'E'
                       MOVE 'S' TO FACING
                   WHEN FACING = 'S'
                       MOVE 'W' TO FACING
                   WHEN FACING = 'W'
                       MOVE 'N' TO FACING
               END-EVALUATE
               EXIT PARAGRAPH.

           IF WS-INSTRUCTION(WS-INSTR-INDEX) = 'F' THEN
               EVALUATE TRUE
                   WHEN FACING = 'N'
                       ADD 1 TO Y-COORD
                   WHEN FACING = 'E'
                       ADD 1 TO X-COORD
                   WHEN FACING = 'S'
                       SUBTRACT 1 FROM Y-COORD
                   WHEN FACING = 'W'
                       SUBTRACT 1 FROM X-COORD
               END-EVALUATE
               EXIT PARAGRAPH.

           IF WS-INSTRUCTION(WS-INSTR-INDEX) = 'B' THEN
               EVALUATE TRUE
                   WHEN FACING = 'N'
                       SUBTRACT 1 FROM Y-COORD
                   WHEN FACING = 'E'
                       SUBTRACT 1 FROM X-COORD
                   WHEN FACING = 'S'
                       ADD 1 TO Y-COORD
                   WHEN FACING = 'W'
                       ADD 1 TO X-COORD
               END-EVALUATE
               EXIT PARAGRAPH.

       END PROGRAM ROVER-EXEC.
