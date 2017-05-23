#!/bin/bash 
k=$(wc -l /home/recaple/netz.txt | awk '{print $1}') 
count=0 
echo "<body>" 
echo  "<br />"
echo  "Net load"
echo "<table><tr><th>interface</th><th>bytes</th><th>packets</th><th>errs</th><th>"
echo "drop</th><th>fifo</th><th>frame</th><th>compressed</th><th>multicast</th><th>bytes</th>"
echo "<th>packets</th><th>errs</th><th>drop</th><th>fifo</th><th>colls</th><th>carrier</th><th>compressed</th></tr>"
while [ $count -lt $k ] 
do 
count=$(( $count + 1 )) 
echo "<tr>" 
cat /home/recaple/netz.txt | head -n$count | tail -n1| awk '{ for(i=1; i<18; i++){ print ("<td>" $i "</td>")}}' 
echo "</tr>" 
done; 
echo "</tr>" 
echo "</table>" 
echo "</body>" 
echo "<br />"

