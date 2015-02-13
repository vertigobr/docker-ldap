#!/bin/sh
ldapmodify -h ldap -a -xv -D cn=admin,cn=config -w senha -f /etc/openldap/schema/cosine.ldif
ldapmodify -h ldap -a -xv -D cn=admin,cn=config -w senha -f /etc/openldap/schema/inetorgperson.ldif
