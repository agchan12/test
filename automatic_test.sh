#!/bin/bash
BASE_URL="http://localhost:4567/"

# Test Questions 1
url=$BASE_URL
resp=`curl -s $url`
if [ "$resp" == "Try /hello/:name" ]; then
  echo testing Q1: pass
else
  echo testing Q1: fail
fi

# Test Questions 2
name="world"
url=$BASE_URL"hello/$name"
resp=`curl -s $url`
if [ "$resp" == "Hello $name" ]; then
  echo testing Q2: pass
else
  echo testing Q2: fail
fi
