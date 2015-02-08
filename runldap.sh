#!/bin/bash
docker run --name ldap -d -p 389:389 \
  -v /opt/data/ldap:/opt/data/ldap \
  vertigo/docker-ldap:latest

