#!/bin/bash

# my Directory
BASENAME=$(cd `dirname $0`; pwd)


mkdir /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAudVNLpQHz03YQzbPCThe6VJsJSO5jo3OyvO8J5Ee0TmtjR0PHVL0OdBSkilorDschERXv8OAm/qi8TGiumil/1QYMCNlfbWHdkqJeyK0ojHh6XZfL61zf2EAq0KXBuJtCaVdJ2y8c+MxkSUeDrNhLLhrTOQ2XJp7fNUbr/K1bbnlMzsqFfu/Ia4Lki+4vYdK8sLVwAU3xPpWg+h9CSXq8zhtODcCwQBztJTH0x45h485+C/6d7rA8wF4tvYUMvDhQsdFkC6U/m0i0zcwWLhn3FlqFB76cufurWTFg89SfNMEWhvqd4Ik5plYSu4cmfA5pDPnMcNv7kna5kKbOMj8SQ== for iganari-test' > /root/.ssh/authorized_keys
