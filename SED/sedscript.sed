#!/bin/sed 

#Insert the text 'Great Literary Charcters' before the first line
1 i\Great Literary Characters

#At the end of the file, append Happily Ever After the End
$a Happily Ever After the End

#Substitute line to name:phone-number
#. - Matches one character but not the newline character 
#* - Matches zero or more characters 
#Matches line that have letters A-z followed by a semicolon, and then phone number 978-123-4567
s/.*\([A-Z][a-z]*:...-...-....\).*/\1/

#  make a initial mark in order to work for second line
#+ duplicated case with a simple regex
1{ x; s/^/\n/; x; }
# trimming

#s/^\s*//
#s/\s*$//
# main

#Append a newline to the contents of the hold spave with the contents of the pattern space
H

#Exchange the contents of the hold and pattern spaces
x

#Sample s/regex/replacement/

s/\(\n.*\)\(\n.*\)*\1$/\1\2/

#Exchange the contents of the hold and pattern space
x

# print hold space at the end
$bItsOver

#Delete the pattern space; immediately start next cycle
d

# :- Specify the location of label for branch commands (b,t,T)
:ItsOver

#Exchange the contents of the hold and pattern spaces
x;

#Substitute the beginning 
#n - (next) If auto-print is not disabled, print the pattern space, then, regardless,
#replace the pattern space with the next line of input. If there is no more input then sed exits without
#processing any more commands 

#Subsitute
s/^\n*//
s/\n*$//



