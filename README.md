# Campos dentro do script que precisam alterar:
"sua-senha" = Você vai substituir esse campo, inclusive as aspas também e vai deixar apenas sua senha SSH da OLT

"seu-login" = Você vai substituir esse campo, inclusive as aspas também e vai deixar apenas o seu login SSH da OLT

"ip-da-olt" = Você vai substituir esse campo, inclusive as aspas também e vai deixar o IP de acesso SSH da sua OLT

# Como rodar o script

Primeiro de tudo você precisa dar permissão de execução para o script, você pode utilizar o comando:
    chmod +x procurar.sh
    
Se você quiser mover o comando para a pasta /usr/bin você poderá chamar o comando utilizando apenas o nome que preferir
No caso vou utilizar o nome procurar
    sudo mv procurar.sh /usr/bin/procurar

# Aqui abaixo mostrarei cada função do script, como ele funciona e por ultimo como executar o script
Nessa pequena documentação vou mostrar como script funciona e mostra quais as configurações principais que devem ser alteradas

## Conectar OLT
Essa é um parametro onde ele irá fazer a conexão com sua OLT
Obs: Você deve fazer um login ssh no terminal antes para poder gerar a chave local

## Converter Maiusculo em Minusculo
Esse parametro não requer alterações, ele serve apenas pra converter letra maiusculas em letra minusculas, pois OLT reconhece somente letras minusculas.

## Procurar MAC na Barra
Esse parametro irá realizar acesso a OLT usando o parametro "Conectar OLT", esse parametro não requer alterações, ele irá procurar onde está o MAC, o Nome
se a ONU está Up ou Down e a potência da ONU

### Execução
Essa é a execução do comando final, ele irá voltar as informações do MAC da ONU do cliente, a PON e o ID que ele está, não requer alterações

# Autor: Edegar Junior - LOCAL INTERNET
