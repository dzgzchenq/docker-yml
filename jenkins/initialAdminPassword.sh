#!/bin/bash
docker cp jenkins:/var/jenkins_home/secrets/initialAdminPassword ./
cat initialAdminPassword
rm initialAdminPassword
