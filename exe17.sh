#!/bin/bash

MESSAGE="Random number is:$RANDOM"
echo "$MESSAGE"

logger -p user.info "$MESSAGE"
