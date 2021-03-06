#! /bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth

useradd local01
useradd local02
useradd local03
useradd local04
useradd local05
useradd local06
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03
echo "local04" | passwd --stdin local04
echo "local05" | passwd --stdin local05
echo "local06" | passwd --stdin local06
useradd kuser01
useradd kuser02
useradd kuser03
useradd kuser04
useradd kuser05
useradd kuser06
