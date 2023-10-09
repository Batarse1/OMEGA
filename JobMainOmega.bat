for /F "tokens=2 delims==." %%I in ('%SystemRoot%\System32\wbem\wmic.exe OS GET LocalDateTime /VALUE') do set "LocalDateTime=%%I"
set "LocalDate=%LocalDateTime:~0,8%"
set "LocalTime=%LocalDateTime:~8,4%"
if not exist "C:\REPOSITORIO\OMEGA\Logs\%LocalDate%" mkdir "C:\REPOSITORIO\OMEGA\Logs\%LocalDate%"


cd "C:\data-integration"
call Kitchen.bat /file:"C:\REPOSITORIO\OMEGA\Job\main.kjb" -param:"SISTEMA=OMEGA" -logfile=C:\REPOSITORIO\OMEGA\Logs\%LocalDate%\log_omega%LocalTime%.log

exit