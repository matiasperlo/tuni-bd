@ECHO OFF
SETLOCAL enabledelayedexpansion

IF "%1" == "" (
    ECHO No action specified. Quitting
    GOTO :End
)

SET "bd=.\db\BDArvol_DEV.db"
SET "tables=tables.csv"

REM Opciones
REM -----------------------------------------------
IF "%1" == "" (
    ECHO No action specified. Quitting
    GOTO :End
)
IF %1 == save   GOTO :Save
IF %1 == clear  GOTO :Clear
IF %1 == build  GOTO :Build
IF %1 == load   GOTO :Load

ECHO No valid command
GOTO :End
REM -----------------------------------------------

:Save
FOR /f "tokens=*" %%a IN (%tables%) DO (
    (ECHO .output schema/%%a.sql && ECHO .schema %%a) | sqlite3 %bd%
)
GOTO :End

:Clear
DEL %bd%
(ECHO .schema) | sqlite3 %bd%
GOTO :End

:Build
FOR /f "tokens=*" %%a IN (%tables%) DO (
    TYPE .\schema\%%a.sql >> schema-output.sql
)
(ECHO .read schema-output.sql) | sqlite3 %bd%
DEL schema-output.sql
GOTO :End

:Load
FOR /f "tokens=*" %%a IN (%tables%) DO (
    (ECHO .read .\data\%%a.sql) | sqlite3 %bd%
)
GOTO :End

:End
ENDLOCAL
