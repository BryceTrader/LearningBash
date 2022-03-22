#!/bin/bash/
hello="./scripts/helloworld.sh"
strInt="./scripts/stringInterp.sh"
args="./scripts/scriptArgs.sh"
arrays="./scripts/arr.sh"
basicOps="./scripts/basicOps.sh"
conditionals="./scripts/conditionals.sh"
fib="./scripts/fib.sh"
cr="./scripts/createScripts.sh"

# . ${hello}
# . ${strInt}
# . ${args} "These words are counted as arguments delineated by a space"
# . ${arrays}
# . ${basicOps}
. ${conditionals}
# . ${fib} 12