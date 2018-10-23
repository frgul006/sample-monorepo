#!/bin/sh
# Echo every command being executed
#set -x

demofunc(){
    local variable="$(./node_modules/.bin/nx affected:apps origin/master HEAD)"
    echo $variable
}

val=$(demofunc)
echo $val

# echo $(yarn run affected:apps origin/master HEAD | cat)


# for i in 1 2 3 4 5
# do
#   echo "Looping ... number $i"
# done
