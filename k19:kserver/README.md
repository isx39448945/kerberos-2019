# Kerberos kserver
## @edt ASIX M11-SAD Curs 2018-2019

**kserver** servidor kerberos detach.

Servidor kerberos. Aquest servidor crea els principals corresponents als clàssics
usuaris que tenim també a ldap.

Les característiques principals són:
 * s'ha d'anomenar kserver.edt.org
 * usuaris amb nomenclatura ldap:   pere, pau (administrador), jordi, marta, anna, julia.
 * usuaris administradors kerberos: superuser (administrador), marta/admin.
 * es crea un principal de host corresponent al servidor host/sshd.edt.org.
 * tot el procés és autometitzat i el servidor s'executa detach.

Execució:
```
docker run --rm --name kserver.edt.org -h kserver.edt.org --net mynet -d kserver:2019
```
