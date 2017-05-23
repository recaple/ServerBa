#!/bin/bash
z=$(wc -l /home/recaple/nets.txt | awk '{print $1}') 
c=0 
echo "<body>" 
echo "<br />";
echo "<br />";
echo "Network connections"
echo "<table><th>Proto</th><th>Recv-Q</th><th>Send-Q</th><th>Local</th><th>Address</th><th>Foreign</th><th>Address</th><th>State</th><th>PID/Program name</th>" 
while [ $c -lt $z ] 
do 
c=$(( $c + 1 )) 
echo "<tr>" 
cat /home/recaple/nets.txt | head -n$c | tail -n1 | awk '{ for(i=1; i<10; i++){ print ("<td>" $i "</td>")}}' 
echo "</tr>" 
echo "<br />" 
done; 
echo "<br />"; 
echo "</table>" 
echo "</body>"
