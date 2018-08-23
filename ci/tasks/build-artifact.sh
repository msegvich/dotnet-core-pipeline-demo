#!/usr/bin/env bash
set -e

version=`cat version/number`
cd git-repo/pcf-ers-dotnetcore-demo

echo I am in `pwd`
ls -l

echo "starting build ..."

dotnet publish -r ubuntu.14.04-x64 -c Release -o ./build-output
cp manifest.yml ./build-output

cp -r ./build-output/* ../../expanded-artifact-dir
echo "In expanded-artifact-dir"
ls ../../expanded-artifact-dir

tar -cvzf ../../artifact-dir/${base_name}-${version}.tar.gz ./build-output
echo "In ../../artifact-dir"
ls ../../artifact-dir 