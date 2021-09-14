#!/bin/bash

echo "O importante não é vencer todos dias, mas lutar sempre"

case $1 in
	"-a") echo -e "\n###DIRETÓRIOS###\n\n$(ls -ld */ | grep -E "[/]$"| cut -d ' ' -f9)" ;;
	"-b") echo -e "\n###ARQUIVOS EXECUTÁVEIS###\n\n$(ls -F | grep -E '[*]' | tr '*' ' ')";;
	"-c") echo -e "\n###LINKS SIMBÓLICOS###\n\n$(ls -l | grep -E "^[l]" | cut -c44-)" ;;
	"-d") echo -e "\n###SHELL SCRIPT###\n\n$(ls | grep -E ".*\.sh")" ;;
	"-e") echo -e "\n####ARQUIVOS MENORES QUE 200BYTES###\n\n$(du -ab | grep -E --color "\b^([0-2][0][0]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\b" | cut -d '.' -f 2)";;
esac

