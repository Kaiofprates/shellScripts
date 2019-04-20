#!/bin/bash

case $1 in
  -cep|-C)
echo $2 | python -c 'import sys,urllib;print urllib.quote(sys.stdin.read().strip())' > temp
busca="$(cat temp)"
curl -s https://cep.guiamais.com.br/busca?word=$busca |hxnormalize -x |hxselect ".col-md-8"  | lynx -stdin -dump | grep -v --invert-match "file"
;;
-ddi|-i)

curl -s https://ddi.guiamais.com.br/busca?word=$2 |hxnormalize -x |hxselect ".col-md-8"  | lynx -stdin -dump | grep -v --invert-match "file"
;;
-ddd|-D)

curl -s https://ddd.guiamais.com.br/busca?word=$2 |hxnormalize -x |hxselect ".col-md-8"  | lynx -stdin -dump | grep -v --invert-match "file"
;;

   -h|--help)
        echo -e  " ===================================================================\n+           ___                     ___                             + \n|          / _ \\___  __ _  __ _    / __\\___ _ __                    |\n+         / /_)/ _ \\/ _` |/ _` |  / /  / _ \\ '_ \\                   +\n|        / ___/  __/ (_| | (_| | / /__|  __/ |_) |                  |\n+        \\/    \\___|\\__, |\\__,_| \\____/\\___| .__/                   +\n|                   |___/                  |_|                      |\n+                                                                   +\n|                             scraping do site:                     |\n+                             https://www.guiamais.com.br           + \n|                                                                   |\n ====================== by Kail ====================================\n\nUso: \n\n$./pcep.sh [op\xc3\xa7\xc3\xa3o] [busca]\n--------------------------------------------------------------------\n-cep , -C   Pesquisa por cep :\n            Obedece o padr\xc3\xa3o: rua, cidade, sigla estado\n            Exemplos:  Av. Paulista, S\xc3\xa3o Paulo, SP ou 01311-000.\n--------------------------------------------------------------------\n-ddd , -D   Pesquisa por DDD \n            Exemplos: Campinas, SP ou 19\n--------------------------------------------------------------------\n-ddi , -i   Pesquisa por DDI { para pa\xc3\xadses }\n            Exemplos: Brasil ou 55"

    ;;
    *)
        echo -e "\033[05;31mOpção inválida\033[00;37m"
    ;;
esac