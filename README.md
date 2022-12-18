# Manual do script

Nessa pequena documentação vou mostrar como script funciona e mostra quais as configurações principais que devem ser alteradas

## Conectar OLT
Essa é um parametro onde ele irá fazer a conexão com sua OLT, você deve alterar o parametro: 
"sua-senha" colocar a senha de acesso SSH da OLT OBS: Não esqueça de remover as aspas, é apenas pra ficar melhor de identificar o parametro
"seu-login" colocar o login de acesso SSH da OLT OBS: Não esqueça de remover as aspas, é apenas pra ficar melhor de identificar o parametro
"ip-da-olt" colocar o IP de acesso SSH da OLT    OBS: Não esqueça de remover as aspas, é apenas pra ficar melhor de identificar o parametro
Obs: Você deve fazer um login ssh no terminal antes para poder gerar a chave local

## Converter Maiusculo em Minusculo
Esse parametro não requer alterações, ele serve apenas pra converter letra maiusculas em letra minusculas, pois OLT reconhece somente letras minusculas.

## Procurar MAC na Barra
Esse parametro irá realizar acesso a OLT usando o parametro "Conectar OLT", esse parametro não requer alterações, ele irá procurar onde está o MAC, o Nome
se a ONU está Up ou Down e a potência da ONU

### Execução
Essa é a execução do comando final, ele irá voltar as informações do MAC da ONU do cliente, a PON e o ID que ele está, não requer alterações

## Insatalação 
Depois que você alterar o script de acordo com seu critério, recomendo mover o arquivo dentro da pasta /usr/bin, assim irá facilitar a chamada do comando
e também será preciso dar poder de execução ao comando:
$ sudo chmod +x procurar.sh

E se quiser mover ele pra pasta /usr/bin pode chamar ele usando o nome que desejar, nesse caso vou usar: procurar
$ sudo cp -rfv procurar.sh /usr/bin/procurar

Pra fazer a procura basta chamar o script e colocar o mac do Clinete: exemplo
$ ./procurar.sh 00:1B:44:11:3A:B7

Ou se você moveu ele pra pasta /usr/bin/procurar, basta executar procurar seguido do MAC:
$ procurar 00:1B:44:11:3A:B7

# Autor: Edegar Junior - LOCAL INTERNET
