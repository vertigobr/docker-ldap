#!/bin/bash
docker run --rm -t -i \
  --link ldap:ldap \
  vertigo/docker-ldap:latest bash

