@ECHO OFF
WHERE gradle >NUL 2>NUL
IF %ERRORLEVEL% NEQ 0 (
  ECHO Gradle is not installed. Please use Android Studio or install Gradle, then run again.
  EXIT /B 1
)
gradle -p "%~dp0" %*
