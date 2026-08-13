#!/usr/bin/env bash

# Script inspired by the contents of the sbt debian packages.
# Debian packages: https://dl.bintray.com/sbt/debian/

mkdir -p ${PREFIX}/share/sbt/bin
mkdir -p ${PREFIX}/bin

cp ./bin/sbt ./bin/sbt.bat ./bin/sbt-launch.jar ${PREFIX}/share/sbt/bin/

# copy all the GraalVM-generated, native launchers
for file in ./bin/sbtn-*; do
    # skip iteration if the file does not exist (in case the shell could not expand to an existing file name)
    [ -e "${file}" ] || continue
    
    cp ${file} ${PREFIX}/share/sbt/bin/
done

cp ${RECIPE_DIR}/sbt ${PREFIX}/bin/sbt
cp ${RECIPE_DIR}/sbt.bat ${PREFIX}/bin/sbt.bat
