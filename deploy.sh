#!/bin/bash

bundle exec knife digital_ocean droplet create --image 25489 --size 66 \
  --location 1 --ssh-keys 7798 --bootstrap \
  --solo \
  --server-name comp2 \
  --run-list "recipe[platform]"
