#!/bin/bash

echo "Enter username"
read username
echo "Enter password"
read password

if [[ ( $username == "RAGIL" && $password == "RAGIL" ) ]]; then
echo "valid user"
else
echo "invalid user"
fi
