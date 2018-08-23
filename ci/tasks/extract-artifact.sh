#!/usr/bin/env bash
set -e

version=`cat version/number`
cd release-candidate

echo I am in `pwd`
ls -l

tar -xvzf ${base_name}-${version}.tar.gz -C ../expanded-artifact-dir
echo "In ../expanded-artifact-dir"
ls ../expanded-artifact-dir