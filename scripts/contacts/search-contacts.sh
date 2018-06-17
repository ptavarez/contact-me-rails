#!/bin/bash

SEARCH='yu'

curl "http://localhost:4741/contacts?search=${SEARCH}" \
  --include \
  --request GET \

echo
