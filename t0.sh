#!/bin/bash 
LAVG1=$(cut -f1 -d" " /proc/loadavg) 
LAVG5=$(cut -f2 -d" " /proc/loadavg) 
LAVG15=$(cut -f3 -d" " /proc/loadavg) 
NCPU=$(lscpu | grep ^CPU\(s\) | awk '{print $2}') 
CRIT=$(echo "$NCPU*2" | bc -l) 
pygmentize (){ 
if [[ $(echo "$1 > $CRIT" | bc) -eq 1 ]]; then 
OUT="<span style='color: red;'>$1</span>" 
elif [[ $(echo "$1 > $[NCPU]" | bc) -eq 1 ]]; then 
OUT="<span style='color: yellow;'>$1</span>" 
else 
OUT="<span style='color: green;'>$1</span>" 
fi 
echo $OUT 
} 
echo "<b>LoadAverage</b>"
echo "<br />"
echo "<table>" 
echo "<tr><th>LA1</th><th>LA5</th><th>LA15</th><th>CRIT</th></tr><tr>" 
echo "<td>"  
pygmentize $LAVG1 
echo "</td>" 
echo "<td>" 
pygmentize $LAVG5 
echo "</td>" 
echo "<td>" 
pygmentize $LAVG15 
echo "</td>"
echo "<td>"
echo $CRIT
echo "</td>"
echo "</table>"

