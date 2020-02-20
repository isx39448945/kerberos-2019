# kserver
FROM fedora:27
LABEL version="1.0"
LABEL author="isx39448945"
LABEL subject="kserver.edt.org"
RUN dnf -y install krb5-server krb5-workstation tree procps vim nmap
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
CMD /opt/docker/startup.sh
WORKDIR /opt/docker/
