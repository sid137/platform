#!/bin/bash 
# To launch and configure a server, run:
#     ./update ip-address nodes/default.json

address=$1
bundle exec knife solo cook root@$address 
