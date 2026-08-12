#!/usr/bin/env bash

# Script inspired by the contents of the sbt debian packages.
# Debian packages: https://dl.bintray.com/sbt/debian/

mkdir -p ${PREFIX}/share/sbt/bin
mkdir -p ${PREFIX}/bin

cp ./bin/sbt ./bin/sbt.bat ./bin/sbt-launch.jar ./bin/sbtn-x86_64-pc-win32.exe ${PREFIX}/share/sbt/bin/
cp ${RECIPE_DIR}/sbt ${PREFIX}/bin/sbt
cp ${RECIPE_DIR}/sbt.bat ${PREFIX}/bin/sbt.bat
