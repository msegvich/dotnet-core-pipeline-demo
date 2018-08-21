#!/bin/bash
cd service-repo/pcf-ers-dotnetcore-demo

echo I am in `pwd`
ls -l ../

echo "starting build ..."

dotnet restore
dotnet publish -c Release -o ./publish

echo "copying files to ../build-output"
cp manifest.yml ../build-output
cp -R ./publish/* ../build-output
