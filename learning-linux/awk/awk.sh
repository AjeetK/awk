#!bin/bash

#displaying the content of file
cat test.txt

#format of awk command is- awk 'pattern{action}' file-name
#following is the example, it prints the first column elements
echo "printing the first column"
awk '{print $1}' test.txt

#It prints the al the lines
echo "printing all the lines"
awk '{print $0}' test.txt

#It prints the al the lines
#echo "printing all the lines"
#awk -F, '{print $0}' test.txt


#It prints the second column elements
echo "printing the second column"
awk '{print $2}' test.txt

#It prints the second column elements
echo "Printing all lines except first (heading)"
awk 'NR!=1{print $0}' test.txt

#join lines that has START pattern
echo "Joining lines after and before START pattern"
awk '/START/{if (NR!=1) print "";next}{printf "%s ",$0}END{print "";}' test.txt
