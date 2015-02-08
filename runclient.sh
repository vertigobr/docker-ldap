#!/bin/bash
docker run --rm -t -i \
  --link ldap:ldap \
  -v $PWD/samples:/opt/samples \
  vertigo/docker-ldap:latest bash

