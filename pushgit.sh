#!/usr/bin/env bash

HOME=/deploy
LOGNAME=deploy
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh

git add -A
git commit -m "\"updated cosmos\""
git push github laptop-master
