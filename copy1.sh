#!/bin/sh

cd /usr/local/bin
# folder remove
ssh -i keys/FOO.pem ec2-user@FOO.com "rm -rf temp"
# folder transfer
scp -r -i keys/FOO.pem /tmp/temp/ ec2-user@FOO.com:~/
echo 'done!'
