#!/bin/bash
HASH=$(slappasswd -s senha)
echo hash: $HASH
sed 's/^olcSuffix/#olcSuffix/g' -i /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
sed 's/^olcRootDN/#olcRootDN/g' -i /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
sed 's/^olcRootPW/#olcRootPW/g' -i /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
sed 's/^olcDbDirectory/#olcDbDirectory/g' -i /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif

echo "olcSuffix: dc=vertigo,dc=com,dc=br" >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
echo "olcRootDN: cn=Manager,dc=vertigo,dc=com,dc=br" >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
echo "olcRootPW: $HASH" >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
echo "olcDbDirectory: /opt/data/ldap" >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif

sed 's/dc=my-domain,dc=com/dc=vertigo,dc=com,dc=br/g' -i /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{1\}monitor.ldif

echo 'olcAccess: {0}to attrs=userPassword by self write by dn.base="cn=Manager,dc=vertigo,dc=com,dc=br" write by anonymous auth by * none' >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif
echo 'olcAccess: {1}to * by dn.base="cn=Manager,dc=vertigo,dc=com,dc=br" write by self write by * read' >> /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{2\}hdb.ldif

