#!/bin/bash


### check ansible
if ! [ `which ansible` ]; then
        yum update  -y
        yum install -y epel-release
        yum install -y --enablerepo=epel ansible
fi

### ansible playbook
DIR='/srv/memcached/opsfiles/playbook'
ansible-playbook -i ${DIR}/staging ${DIR}/site.yml
