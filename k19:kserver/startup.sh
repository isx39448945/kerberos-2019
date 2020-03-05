#! /bin/bash

bash /opt/docker/install.sh
ulimit -n 1024
/usr/sbin/krb5kdc
/usr/sbin/kadmind -nofork
