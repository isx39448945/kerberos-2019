#! /bin/bash
# Install kerberos server

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/hosts /etc/hosts
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl
kdb5_util create -s
kadmin.local -q "addprinc -pw ksuperuser superuser"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kadmin admin"
kadmin.local -q "addprinc -pw kpau pau/admin"
kadmin.local -q "addprinc -pw kmarta marta/admin"


