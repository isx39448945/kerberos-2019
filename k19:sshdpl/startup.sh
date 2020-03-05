#! /bin/bash
/opt/docker/install.sh && echo "Ok install"
ulimit -n 1024
/usr/sbin/nslcd && echo "nslcd Ok"
/usr/sbin/nscd && echo "nscd Ok"
/usr/sbin/sshd -D
