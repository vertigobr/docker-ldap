#!/bin/bash
if [ "$(ls -A /opt/data/ldap)" ]; then
 echo "Using data files in /opt/data/ldap"
else
 echo "Empty data folder! Copying default files..."
 cp -R /var/lib/ldap/* /opt/data/ldap
 /opt/initldap.sh
fi
chown -R ldap:ldap /opt/data/ldap
exec /usr/sbin/slapd -u ldap -d 3

