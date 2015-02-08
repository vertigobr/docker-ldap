#!/bin/bash
docker run --rm --name ldap -t -i -p 389:389 \
  -v /opt/data/ldap:/opt/data/ldap \
  vertigo/docker-ldap:latest bash

