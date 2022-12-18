# Manual so script

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

Autor: Edegar Junior - LOCAL INTERNET
