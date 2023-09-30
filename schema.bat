@ECHO OFF
IF %1 == save   GOTO :save-cmd
IF %1 == clear  GOTO :clear-cmd
IF %1 == build  GOTO :build-cmd
IF %1 == test-schema GOTO :test-schema-cmd
IF %1 == test-load   GOTO:test-load-cmd
ECHO "No valid command"
EXIT

:save-cmd
(ECHO .output schema.sql && ECHO .schema ) | sqlite3 BDArvol_DEV.db
COPY schema.sql schema-bk.sql
GOTO :end

:clear-cmd
(ECHO .read clear.sql ) | sqlite3 BDArvol_DEV.db
GOTO :end

:build-cmd
(ECHO .read schema.sql ) | sqlite3 BDArvol_DEV.db
GOTO :end

:test-schema-cmd
(ECHO .read clear.sql && ECHO .read schema.sql) | sqlite3 BDArvol_TEST.db
GOTO :end

:test-load-cmd
(ECHO .read dump.sql) | sqlite3 BDArvol_TEST.db

:end
