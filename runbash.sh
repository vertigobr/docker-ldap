#!/bin/bash
docker run --rm -t -i \
  -v /opt/data/ldap:/opt/data/ldap \
  vertigo/docker-ldap:latest bash

