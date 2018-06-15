#!/bin/bash

curl "http://localhost:4741/contacts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "contact": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "job_title": "'"${JOB}"'",
      "phone_number": "'"${NUM}"'",
      "email": "'"${EMAIL}"'"
    }
  }'

echo
