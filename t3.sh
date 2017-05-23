#!/bin/bash 
k=$( wc -l /home/recaple/d.txt | awk '{print $1}') 
t=$(mpstat | sed -e '1,3d' | awk '{print $3}') 
r=$(mpstat | sed -e '1,3d' | awk '{print $4}') 
d=$(echo "$t + $r" | bc -l) 
count=0 
echo "<body>" 
echo "CPU"
echo "<table><th>time</th><th>AM</th><th>CPU</th><th>%usr</th><th>%nice</th><th>%sys</th><th>%iowait</th><th>%irq</th><th>%soft</th><th>%steal</th>"
echo "<th>%guest</th><th>%gnice</th><th>%idle</th></tr>"
while [ $count -lt $k ] 
do 
count=$(( $count + 1 )) 
echo "<tr>" 
cat /home/recaple/d.txt | head -n$count | tail -n1 | awk '{ for(i=1; i<13; i++){ print ("<td>" $i "</td>")}}' 
echo "<td>" 
echo $d 
echo "</td>" 
echo "</tr>" 
echo "<br />" 
done; 
echo "<br />"; 
echo "</table>" 
echo "</body>"
