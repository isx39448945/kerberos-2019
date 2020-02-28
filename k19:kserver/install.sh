#! /bin/bash
# Install kerberos server

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/hosts /etc/hosts
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
kdb5_util create -s -P "masterkey"
kadmin.local -q "addprinc -pw ksuperuser superuser"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kadmin admin"
kadmin.local -q "addprinc -pw kpau pau/admin"
kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kuser01 kuser01"
kadmin.local -q "addprinc -pw kuser01 kuser02"
kadmin.local -q "addprinc -pw kuser01 kuser03"
kadmin.local -q "addprinc -pw kuser01 kuser04"
kadmin.local -q "addprinc -pw kuser01 kuser05"
kadmin.local -q "addprinc -pw kuser01 kuser06"
kadmin.local -q "addprinc -randkey host/sshd.edt.org"
