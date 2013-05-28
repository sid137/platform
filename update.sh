#!/bin/bash 
# To launch and configure a server, run:
#     ./update ip-address nodes/default.json

# ./clean
address=$1
user=sid137
bundle exec knife solo cook $user@$address  nodes/default.json
