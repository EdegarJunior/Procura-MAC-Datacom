#!/bin/bash
## Conectar OLT obs: Substitua os dados dentro das aspas de acordo com os dados da sua OLT
function conectar-olt() {
	sshpass -p "sua-senha" ssh "seu-login"@"ip-da-olt" "$@"
}
## Converter Maiusculo em Minusculo
function conversor() {
	echo $1 | tr 'A-Z' 'a-z'
}
## Procurar MAC na olt
function procura-mac() {
	conectar-olt show running-config service-port $(conectar-olt show mac-address-table \| include $1 | tr 'A-Z' 'a-z' | awk '{print $1}' | tr -d '-' | tr -d 'a-z') | awk '{print $2}' | grep "/" > /tmp/mac-pon && conectar-olt show running-config service-port $(conectar-olt show mac-address-table \| include $1 | tr 'A-Z' 'a-z' | awk '{print $1}' | tr -d '-' | tr -d 'a-z') | awk '{print $4}' | grep "[0-9]" > /tmp/mac-onu
}
### Execução
procura-mac $(conversor-mac $1); procura-mac $(conversor-mac $1); conectar-olt show interface gpon $(cat /tmp/mac-pon) onu $(cat /tmp/mac-onu) | grep -E "Name|Serial|Rx|Operati" && printf "pon " && cat /tmp/mac-pon && printf "onu " && cat /tmp/mac-onu 
