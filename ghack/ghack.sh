#!/bin/bash

a='"'

google $a$1$a filetype:$2 > list; while read line; do  curl -O $line; done <list
