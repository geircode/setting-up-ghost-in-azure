#!/bin/bash

echo -e  'y\n'|ssh-keygen -t rsa -b 4096 -C your@email.no -P Geircode123456 -N "" -f /templateworkspace_secrets/ubuntu_rsa
