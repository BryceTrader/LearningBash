a=0
b=1
n=0

while [ $n -lt $1 ]; do
	b=$((b+a))
	a=$((b-a))
	echo "n^$n: $a"
	n=$((n+1))
done