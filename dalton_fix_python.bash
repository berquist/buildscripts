#!/usr/bin/env bash

# dalton_fix_python.bash: Change all instances of `python` in the
# DALTON source tree to `python2`, since the scripts aren't Python 3+
# compatible.

files=$(find . -type f)

for file in ${files[@]};
do
    sed -i 's|python$|python2|g' "${file}"
    sed -i 's|python |python2 |g' "${file}"
    sed -i 's|COMMAND python |COMMAND python2 |g' "${file}"
done
