# Requisitos minimos:

 ° Servidor telnet instalado na sua distribuição linux
 
 ° sshpass instalado na maquina
 
 é preciso fazer um acesso via ssh normal na sua OLT pra gerar as chaves antes, comando abaixo:
    
    ssh nome-de-usuario@ip-da-olt

# Campos dentro do script que precisam alterar:

Você poder utilizar um editor de texto qualquer pra editar os parametros, recomendo vim ou nano

Esses são os parametros que precisam de alteração:


"sua-senha" = Você vai substituir esse campo pela sua senha SSH da OLT

"seu-login" = Você vai substituir esse campo e colocar seu login SSH da OLT

"ip-da-olt" = Você vai substituir esse campo e vai deixar o IP de acesso SSH da sua OLT
o resultado final deverá ficar igual o exemplo abaixo:

sshpass -p 1234 ssh admin@127.0.0.1 "$@"

# Como rodar o script

Primeiro de tudo você precisa dar permissão de execução para o script, você pode utilizar o comando:

    chmod +x mac
    
Agora basta executar o comando, alterando exemplo para o MAC que deseja procurar na sua OLT
    
    ./mac MAC-QUE-DESEJA-CONSULTAR
    
# Como instalar o script
Se dejar você poderá instalar o script dentro da sua /usr/bin e chamar o script digitando apenas o nome que desejar, no exemplo utilizei o nome "exemplo"
você pode alterar pra outro nome que desejar

    sudo cp -rfv mac /usr/bin/exemplo
    
Agora pra executar o comando basta chamar o nome do arquivo que você moveu dentro da pasta bin

    exemplo MAC-QUE-DESEJA-CONSULTAR

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
