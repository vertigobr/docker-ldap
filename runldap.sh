#!/bin/bash
docker run --name ldap -d \
  -v /opt/data/ldap:/opt/data/ldap \
  vertigo/docker-ldap:latest

