#!/bin/bash
docker run --rm -t -i -v $PWD:/opt/projeto \
  vertigo/docker-ldap:latest bash

