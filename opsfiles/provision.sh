#!/bin/bash

if ! [ `which ansible` ]; then
        yum update  -y
        yum install -y epel-release
        yum install -y --enablerepo=epel ansible
fi
