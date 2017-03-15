#!/bin/bash

set -x

yum_install_ansible()
{
  ### input grub-pc setting
  # echo "set grub-pc/install_devices /dev/sda" | debconf-communicate

  ### update yum
  # apt-get install -f
  yum update  -y
  yum upgrade -y
  yum install -y epel-release

  ### install ansible
  # # 'vivid is Ubuntu 15.4', 'wily is 15.10', 'xenial is 16.04'
  # CODENAME='xenial'
  # apt install -y software-properties-common
  # apt-add-repository ppa:ansible/ansible
  # apt-get update
  # apt-get install -y ansible
  yum install -y --enablerepo=epel ansible
}

### install ansible
yum_install_ansible
ansible --version


### ansible-playbook 
playbook_dir='/develop/repcached/opsfiles/vagrant/playbook'

ansible-playbook -i ${playbook_dir}/vagrant ${playbook_dir}/webserver.yaml

rm -rfv ${playbook_dir}/webserver.retry
