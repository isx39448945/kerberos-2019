#! /bin/bash

docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -p 88:88 -p 464:464 -p 749:749 -d adrinarvaez/k19:kserver
docker run --rm --name ldap.edt.org -h ldap.edt.org --net mynet -p 389:389 -d isx43577298/k19:kldap
docker run --rm --name sshd.edt.org -h sshd.edt.org --net mynet -p 1022:22 -d adrinarvaez/k19:sshdpl
