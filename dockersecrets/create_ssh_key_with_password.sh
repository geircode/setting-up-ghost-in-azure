#!/bin/bash

echo -e  'y\n'|ssh-keygen -t rsa -b 4096 -C your@email.no -P Geircode123456 -N "" -f /setting_up_ghost_in_azure_secrets/ubuntu_rsa
