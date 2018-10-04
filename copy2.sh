#!/bin/sh

rm -rf /tmp/temp
cd /var/lib/pbi
# find docs and copy it to tmp with same structure
find . -name 'FOO1-*.csv' -exec cp --parents \{\} /tmp \;
find . -name 'FOO2-*.csv' -exec cp --parents \{\} /tmp \;
find . -name 'FOO3-*.csv' -exec cp --parents \{\} /tmp \;
find . -name 'FOO4-*.txt' -exec cp --parents \{\} /tmp \;
find . -name 'FOO5-*-FCB' -exec cp --parents \{\} /tmp \;
echo 'Done!'

