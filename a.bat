@echo off
echo [PROCESSING...] git pull
git pull 
echo ======================================================
echo [PROCESSING...] git add --all
git add --all .
if [%1] EQU [] (
echo [PROCESSING...] git commit -m "DEV JAVA Web Project %date%~[%time:~5,0%]"
git commit -m "DEV JAVA Web Project %date%~[%time:~5,0%]"
) else (
echo [PROCESSING...] git commit -m %1
git commit -m %1
)
echo [PROCESSING...] git push
git push
echo ======================================================
echo.