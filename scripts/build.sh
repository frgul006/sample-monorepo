#!/bin/sh

BUILD_NUMBER=12
TAG_PATTERN="build-*"

tags=(  $(git tag -l "$TAG_PATTERN") )
mostRecentTag=${tags:0}

echo "Last successful build tag: $mostRecentTag"

if [ "$mostRecentTag" = "" ]; then
  echo "WARNING! No tags matching $TAG_PATTERN was found"
  echo "Setting base to origin/master"
  mostRecentTag="origin/master"
fi

lastSuccessfulBuild=$(git rev-list -n 1 $mostRecentTag)
echo "Checking what apps should be built since commit: $lastSuccessfulBuild"

affectedAppsStr=$(./node_modules/.bin/nx affected:apps $lastSuccessfulBuild HEAD)
affectedApps=()
 while IFS=' ' read -ra ADDR; do
      for i in "${ADDR[@]}"; do
          affectedApps+=($i)
      done
 done <<< "$affectedAppsStr"

echo "Linting affected code"
echo "$(npm run affected:lint $lastSuccessfulBuild HEAD)"

echo "Testing affected code"
echo "$(npm run affected:test $lastSuccessfulBuild HEAD)"

echo "Building $affectedAppsStr"
for i in "${affectedApps[@]}"; do
    echo "$(npm run build:ci -- --project="$i")"
done
