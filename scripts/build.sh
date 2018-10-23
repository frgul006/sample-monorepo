#!/bin/sh
# Echo every command being executed
#set -x

getAffectedApps(){
    local variable="$(./node_modules/.bin/nx affected:apps origin/master HEAD)"
    echo $variable
}

affectedAppsStr=$(getAffectedApps)
affectedApps=()
 while IFS=' ' read -ra ADDR; do
      for i in "${ADDR[@]}"; do
          affectedApps+=($i)
      done
 done <<< "$affectedAppsStr"

 echo ${affectedApps[@]}
# echo $(yarn run affected:apps origin/master HEAD | cat)

for i in "${affectedApps[@]}"; do
    set -x
    $(npm run build:ci -- --project="$i")
done

# for i in 1 2 3 4 5
# do
#   echo "Looping ... number $i"
# done

