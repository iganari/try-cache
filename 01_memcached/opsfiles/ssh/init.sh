#!/bin/bash

# my Directory
BASENAME=$(cd `dirname $0`; pwd)


mkdir /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDb8tkVPXojx493TIesY0aqYOkDIygd49jOzobkOZSuGJdMpsZUW28gxfGA5wtv2pzzpHf7DdY7eBDpJkWmkup5A4/Qst3Em1xuet9ptlfbclvvBYIf6bpvoK5+jhc8vSFTXbyQqgi05zzJYUWMADb6zYrqFhUIJHwRItrr3wn8bDzrdqyotLVuI1sy7RmcWDzZXxVJOTnRhuZp41L0LrfFxNrZzxno+rohN5K57MwxrH0VzlGtV6QOQCQKDFL6WgtWUJUg9lUiC/+Y3bTPJM3uVlFNtMCw2YJQDsjF7MTxHPdg59YJPEYFBsei+Du/0GubQvRyC7ry7m/CODJ87eC9 for try memcached' > /root/.ssh/authorized_keys
