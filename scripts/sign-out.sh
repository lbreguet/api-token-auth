#!/bin/bash

# curl "http://localhost:3000/sign-out/$ID" \
curl "${API}${API_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: TOKEN token=${TOKEN}"

# data output from curl doesn't have a trailing newline
echo
