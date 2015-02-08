OpenLDAP Server
===============

Starts OpenLDAP, exposed at 389 port.

Consider using the "/opt/data/ldap" mount point to preserve ldap database.

Root DN is "cn=Manager,dc=vertigo,dc=com,dc=br", password "senha". You can
find (and change) these defaults by messing around with "initldap.sh".

### Testing

You can run both a ldap server (as in "runldap.sh") and a ldap client
(as in "runclient.sh"). Note the use of "--link" in order to the client
be able to reach the server by the "ldap" hostname.

