cat runscript_motd.txt
echo ""
read -p "Enter dedotated wam: " mem
echo "Starting server..."
while true
do
java -Xms$"mem"M -Xmx$"mem"M -jar server.jar -nogui
echo "Server has stopped. Server will restart in 5 seconds. [Hit CTRL+C to exit]"
sleep 5
echo "Restarting server..."
done