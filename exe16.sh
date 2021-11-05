#!/bin/bash

INPUT=$1
cd /usr/bin
case $INPUT in

start)
       ./firefox &
       echo "Firefox Start"
       ;;
       
stop)
      PID_ID=$(ps -ef | grep firefox | cut -d" " -f3 | sed '1!d')
      kill $PID_ID

esac
