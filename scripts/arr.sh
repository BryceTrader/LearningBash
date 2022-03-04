#!/bin/bash

favoriteThings=('Programming' 'JavaScript' 'Japan')
favoriteThings[0]="Coding"
favoriteThings[3]="Japanese"

echo ${favoriteThings[0]}           # Element #0
echo ${favoriteThings[-1]}          # Last element
echo ${favoriteThings[@]}           # All elements, space-separated
echo ${#favoriteThings[@]}          # Number of elements
echo ${#favoriteThings}             # String length of the 1st element
echo ${#favoriteThings[3]}          # String length of the Nth element
echo ${favoriteThings[@]:3:2}       # Range (from position 3, length 2)
echo ${!favoriteThings[@]}          # Keys of all elements, space-separated

favoriteThings=("${favoriteThings[@]}" "Kanji")    		# Push
favoriteThings+=('Gaming')                  	   		# Also Push
favoriteThings=( ${favoriteThings[@]/Kanji/} )       	# Remove by regex match
unset favoriteThings[3]                            		# Remove one item
favoriteThings2=("${favoriteThings[@]}")                 # Duplicate
favoriteThings3=("${favoriteThings[@]}" "${favoriteThings2[@]}") # Concatenate
# lines=(`cat "logfile"`)                 				# Read from file

# Interation
for i in "${favoriteThings3[@]}"; do
  echo $i
done
echo ${!favoriteThings[@]}