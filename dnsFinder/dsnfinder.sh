#!/bin/bash
# find dns services using api hackertarget
case $1 in
  --url|-u)
   echo -e "------------------search----------------------"
   curl -s "https://api.hackertarget.com/hostsearch/?q=$2";
   echo -e "\n----------------------------------------------\n"
;;
   -h|--help)
cat logo.txt;                                              
    ;;
    *)
        echo -e "\033[05;31mOpção inválida\033[00;37m"
    ;;
esac
