#!/bin/sh
ldapadd -h ldap -f users.ldif -D cn=Manager,dc=vertigo,dc=com,dc=br -w senha
ldapadd -h ldap -f groups.ldif -D cn=Manager,dc=vertigo,dc=com,dc=br -w senha

