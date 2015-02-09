#!/bin/sh
ldapadd -x -h ldap -f testuser.ldif -D cn=Manager,dc=vertigo,dc=com,dc=br -w senha

