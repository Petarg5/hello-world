*> When the following code is run in any COBOL sandbox, it will output the text "Hello World."
IDENTIFICATION DIVISION.
PROGRAM-ID. HelloWorld.
DATA DIVISION.
WORKING-STORAGE SECTION.
PROCEDURE DIVISION.
    DISPLAY 'Hello World'
    STOP RUN.
