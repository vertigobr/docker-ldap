OpenLDAP Server
===============

Starts OpenLDAP, exposed at 389 port.

Consider using the "/opt/data/ldap" mount point to preserve ldap database
between runs.

Root DN is "cn=Manager,dc=vertigo,dc=com,dc=br", password "senha". You can
find (and change) these defaults by messing around with "initldap.sh".

Despite the "root dn" looks, there is no root organization. You should add
one if you must (check the "addorg.sh" sample).

### Testing

You can run both a ldap server (as in "runldap.sh") and a ldap client
(as in "runclient.sh"). Note the use of "--link" in order to the client
be able to reach the server by the "ldap" hostname.

### Samples

Sample scripts are suited to work from a ldap client **after** you start the
ldap server container. The easiest way to test them is to run the ldap server
using "runldap.sh" (goes to background) and then using "runclient.sh" (it 
mounts the "samples" folder on "/opt/samples", links to the ldap server and 
gives you a 'bash' prompt).

* **pingldap.sh:** tests the connection with the ldap server
* **addorg.sh:** adds an organization to the ldap tree


### Notes

This image run "initldap.sh" every time it starts, so basically it is like
the "Manager" DN and passwords are hard coded. You can add an init script
of your own (using another image or mount point).

