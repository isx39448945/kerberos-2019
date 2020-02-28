#! /bin/bash

useradd local01
useradd local02
useradd local03
useradd kuser01
useradd kuser02
useradd kuser03
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03

cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/sshd_config /etc/ssh/sshd_config
cp /opt/docker/system-auth /etc/pam.d/system-auth
bash /opt/docker/auth.sh
cp /opt/docker/krb5.conf /etc/krb5.conf
/usr/bin/ssh-keygen -A
kadmin -p marta -w kmarta -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"
