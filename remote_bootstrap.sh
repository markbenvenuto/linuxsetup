#!/bin/bash
# remote_bootstrap.sh
# Must be run from mac or Linux machine

if [ "$#" -ne 1 ]; then
    echo "Must specify Remote Host to connect to (i.e. machine.example.com)"
    exit 1
fi

REMOTE_HOST=$1

scp $HOME/.evergreen.yml ubuntu@$REMOTE_HOST:/home/ubuntu

ssh ubuntu@$REMOTE_HOST mkdir /home/ubuntu/.ssh
ssh ubuntu@$REMOTE_HOST 'echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> $HOME/.ssh/config'
scp $HOME/.ssh/id_rsa ubuntu@$REMOTE_HOST:/home/ubuntu/.ssh/id_rsa
scp $HOME/.ssh/id_rsa.pub ubuntu@$REMOTE_HOST:/home/ubuntu/.ssh/id_rsa.pub

scp $HOME/.gitconfig ubuntu@$REMOTE_HOST:/home/ubuntu/.gitconfig

ssh ubuntu@$REMOTE_HOST mkdir /home/ubuntu/linuxsetup
scp -r `pwd`/* ubuntu@$REMOTE_HOST:/home/ubuntu/linuxsetup

ssh ubuntu@$REMOTE_HOST /bin/bash /home/ubuntu/linuxsetup/local_bootstrap.sh
