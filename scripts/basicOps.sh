#!/bin/bash
# $((expression))
a=2
b=4

# echo "Math Operations:"
# echo "$a + $b = $((a + b))"			# Addition
# echo "$a - $b = $((a - b))"			# Subtraction
# echo "$a * $b = $((a * b))"	 		# Multiplication
# echo "$a / $b = $((a / b))"	 		# Division
# echo "$a % $b = $((a % b))"	 		# Modulo
# echo "$a ** $b = $((a ** b))" 		# Exponant
# echo ""

myStr="this is an example string."
subStr="e"
echo "String Operations:"
# echo "String length: ${#myStr}"			# String Length
# pos=$(expr index "$myStr" "$subStr")-1	# Substring Indexing - First index of any value in subStr

# echo ${myStr:pos:7}						# String Extraction
# echo ${myStr:pos}							# No len - till end of string

str="to be or not to be"
# echo ${str[@]/be/eat}						# string replacement - first
# echo ${str[@]//be/eat}					# all occurances
# echo ${str[@]// not/}						# delete
# echo ${str[@]/#to be/eat now}				# from beginning
# echo ${str[@]/%be/eat}					# from end
# echo ${str[@]/%be/be on $(date +%F)}

# BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# # write your code here
# ISAY=$BUFFETT

# # Change1: replace the first occurrence of 'snow' with 'foot'. 
# # Change2: delete the second occurrence of 'snow'. 
# # Change3: replace 'finding' with 'getting'. 
# # Change4: delete all characters following 'wet'. Tip: One way to implement Change4, if to find the index of 'w' in the word 'wet' and then use substring extraction.
# ISAY=${ISAY[@]/snow/foot} 
# ISAY=${ISAY[@]// snow/}
# ISAY=${ISAY[@]/finding/getting}
# wetPos=$(expr index "$ISAY" "w")+2
# ISAY=${ISAY:0:wetPos}


# # Test code - do not modify
# echo "Warren Buffett said:"
# echo $BUFFETT
# echo "and I say:"
# echo $ISAY