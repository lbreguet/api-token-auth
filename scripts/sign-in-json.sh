#!/bin/bash

#curl "http://localhost:3000/sign-in" \
# API = http://localhost:4741 API_PATH = /sign-in
curl "${API}${API_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data ' {
      "credentials": {
        "email": "'${EMAIL}'",
        "password": "'${PASSWORD}'"
      }
  }'

# data output from curl doesn't have a trailing newline
echo
