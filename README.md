# Pega CEP   --- 📫
---
### Exercício de webscraping com o site [Guiamais](https://www.guiamais.com.br).
> Retorna CEP,DDD ou  DDI 
### Requerimentos:
   * lynx
   * html-xml-utils
   * python
   * curl
### instalação: 
```shell
$chmod +x pcep.sh
```
### Exemplo de pesquisa: 
```shell
$./pcep.sh -cep "Montes Claros, MG"
   LOGRADOURO BAIRRO CIDADE/ESTADO BAIRRO CEP
   [1]Travessa 1
   [2]Vila Anália [3]Montes Claros, MG [4]Vila Anália, Montes Claros, MG
   [5]39402-118
   [6]Avenida A
   [7]Nova Suiça [8]Montes Claros, MG [9]Nova Suiça, Montes Claros, MG
   [10]39406-320
   [11]Avenida A
   [12]Raul Lourenço [13]Montes Claros, MG [14]Raul Lourenço, Montes
   Claros, MG [15]39404-700
```


