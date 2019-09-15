#!/bin/bash

case $1 in
    q|-q)
    curl -s https://www.questaocerta.com.br/questoes/instituicao/cgu/$2?imprimir=false | hxnormalize -x | lynx -stdin -dump | grep -v -i "gabarito"
    ;;
    a| -a)
    curl -s https://www.questaocerta.com.br/questoes/instituicao/cgu/$2?imprimir=false | hxnormalize -x | lynx -stdin -dump | grep -i "gabarito"
    ;;
    *)
    echo -e "----------------------------------------------------------------------------------       
    Gabaritor Tabajara  by r4chm4n1n0ff 15/09/2019
----------------------------------------------------------------------------------       
usage: \033[01;32m./gabaritor [option] [number]\033[01;37m
       \033[01;32m -q / q   show questions\033[01;37m
       \033[01;32m -a / a   show answers\033[01;37m
----------------------------------------------------------------------------------       
Note that [number] refers to the page containing the questions, choose any number.
----------------------------------------------------------------------------------
"

    ;;
    esac