#!/bin/bash

if test -e $1;then
	linhas=$(cat $1  | wc -l)
	linhatexto=$(sed -n $2p $1)
	if [ $2 -le  $linhas ]; then
		echo -e "$linhatexto"
	else
		echo -e "Falha: o arquivo '$1' possui apenas '$linhas' linhas"
	fi
else
	echo "OPS!!! ARQUIVO NÃO EXISTE"
	exit 0
fi
