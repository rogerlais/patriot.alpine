#!/bin/bash

echo "Setup OOB for Alpine"

#Register status at profile
echo "Register status at profile"
#One line break is needed
content="\'PATRIOT_VERSION=\'0.2023.0.1\'\n"
content+="\'PATRIOT_STATUS=\'1\'\n"
echo "$content" > /etc/profile.d/patriot.sh

#Install packages
mkdir -p /opt/patriot
#Move with overwrite
mv -f ./lib /opt/patriot/ || exit  #Exit if mv fails
cd /opt/patriot || exit  #Exit if cd fails




echo "Initial configuration finished!!!"
