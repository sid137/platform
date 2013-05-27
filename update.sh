#!/bin/bash 
# To launch and configure a server, run:
#     ./update ip-address nodes/default.json

./clean
address=$1
bundle exec knife solo cook root@$address  nodes/default.json
