#!/bin/sh
ldapadd -h ldap -f vertigo.ldif -D cn=Manager,dc=vertigo,dc=com,dc=br -w senha
