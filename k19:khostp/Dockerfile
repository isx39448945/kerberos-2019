# kclient pam
FROM fedora:27
LABEL version="1.0"
LABEL author="isx39448945"
LABEL subject="kclientp.edt.org"
RUN dnf -y install krb5-workstation tree procps vim nmap passwd authconfig pam_krb5
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker/
CMD /opt/docker/startup.sh
