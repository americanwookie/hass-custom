#!/bin/sh

if [ -z "$1" ]; then
  exit;
fi

cat /etc/hosts | sed -e "s/^[0-9.]\+ unifi-api/$1 unifi-api/g" > /etc/hostsnew
if ! diff /etc/hosts /etc/hostsnew > /dev/null; then
  cat /etc/hostsnew > /etc/hosts
else
  if ! grep "$1 unifi-api" /etc/hosts > /dev/null; then
    echo $1 unifi-api >> /etc/hosts
  fi
fi
rm /etc/hostsnew
