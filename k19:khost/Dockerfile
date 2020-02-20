# kclient
FROM fedora:27
LABEL version="1.0"
LABEL author="isx39448945"
LABEL subject="kclient.edt.org"
RUN dnf -y install krb5-workstation tree procps vim nmap
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/krb5.conf
WORKDIR /opt/docker/
