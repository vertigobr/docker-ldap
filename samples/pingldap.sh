#!/bin/sh
ldapwhoami -vvv -h ldap -p 389  -D cn=Manager,dc=vertigo,dc=com,dc=br -x -w senha

