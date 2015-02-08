# OpenLDAP Image

FROM vertigo/docker-base:latest

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

WORKDIR /opt

RUN yum -y install openldap-servers openldap-clients && \
    yum clean all

ADD startldap.sh /opt/startldap.sh
ADD initldap.sh /opt/initldap.sh
ADD samples /opt/samples

RUN chmod +x /opt/startldap.sh && chmod +x /opt/initldap.sh && chmod +x /opt/samples/*.sh

VOLUME /opt/data/ldap

EXPOSE 389

CMD /opt/startldap.sh
