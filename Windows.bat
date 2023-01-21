@echo off
type runscript_motd.txt
echo ""
set /p mem="Enter dedotated wam: "
echo "Starting server..."
:start
"C:\Program Files\Java\jre1.8.0_351\bin\javaw.exe" -Xms%mem%M -Xmx%mem%M -jar server.jar
echo "Server has stopped. Server will restart in 5 seconds. [Hit CTRL+C to exit]"
timeout /t 5 /nobreak
echo "Restarting server..."
goto start