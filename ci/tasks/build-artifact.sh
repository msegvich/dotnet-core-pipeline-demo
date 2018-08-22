#!/usr/bin/env bash
set -e

# version=`cat version/number`
# cd git-repo
# ./mvnw install
# cp target/*.jar ../artifact-dir/${base_name}-${version}.jar
# ls ../artifact-dir


cd git-repo/pcf-ers-dotnetcore-demo

echo I am in `pwd`
ls -l

echo "starting build ..."

dotnet publish -r ubuntu.14.04-x64 -c Release -o ./build-output
cp manifest.yml ./build-output
echo "In build-output"
ls ./build-output

tar -cvzf ../artifact-dir/${base_name}-${version}.tar ./build-output
echo "In ../artifact-dir"
ls ../artifact-dir 