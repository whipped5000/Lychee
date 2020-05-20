#!/bin/bash

body='{
"request": {
"branch":"master",
"config": {
  "env": {
    "global": [ "TRAVIS_TAG=new_Lychee_version" ]
}}}}'

curl -s -X POST \
   -H "Content-Type: application/json" \
   -H "Accept: application/json" \
   -H "Travis-API-Version: 3" \
   -H "Authorization: token $TRAVIS_API_TOKEN" \
   -d "$body" \
   https://api.travis-ci.com/repo/LycheeOrg%2FLychee-Docker/requests
