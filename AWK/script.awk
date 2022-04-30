#!/bin/awk -f 

#a. Prints first name of all the Tooks followed by their total campaign contributions
#awk -F: '/Took/ {print "The Total Campaign Contributions for: " $1 " were: " $3 + $4 + $5}' AwkLab.data
#b. Prints Bullroarers contributions after his name.
#awk -F: '/Bullroarer/ {print "Bullroarers Monthly Contributions were: $" "$"$3 ", " "$"$4 ", and ""$"$5 }' AwkLab.data
#c. Prints all the names and last month's contributions of those who contributed over $175 for their last contribution
#awk -F: '{sum=$5}sum>175{print $1 " - Their last months contribution was: " sum }' AwkLab.data

#Commands that work^

BEGIN {FS = ":"}
/Took/ {print "Number1 - The Total Campaign Contributions for: " $1 " were: " $3 + $4 + $5}
/Bullroarer/ {print "Number 2 - Bullroarers Monthly Contributions were: $" "$"$3 ", " "$"$4 ", and ""$"$5 }
{sum=$5}sum>175{print "Number 3 - "$1 " - Their last months contribution was: " sum }