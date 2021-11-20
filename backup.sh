#!/bin/bash

user=`whoami`
data=`date '+%Y-%m-%d'`

tar -czvf ~/tmp/backup/${user}_home_${data}.tar.gz /home/*

