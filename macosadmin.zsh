#!/bin/bash

USERNAME="IT Admin"
FULLNAME="IT Admin"
PASSWORD="test!"

if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' already exists. Exiting."
    exit 1
fi

sudo sysadminctl -addUser "$USERNAME" -fullName "$FULLNAME" -password "$PASSWORD" -admin

if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' created successfully and added as admin."
else
    echo "Failed to create user '$USERNAME'."
    exit 1
fi
