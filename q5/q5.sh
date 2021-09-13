#!/bin/bash

echo "O importante não é vencer todos dias, mas lutar sempre"

case $1 in
	"-a") echo -e "\n###DIRETÓRIOS###\n\n$(ls -ld */ | grep -E "[/]$"| cut -d ' ' -f9)" ;;
	"-b") echo -e "\n###ARQUIVOS EXECUTÁVEIS###\n\n$(ls -l | grep -E "[x]\b" | cut -c42-)" ;;
	"-c") echo -e "\n###LINKS SIMBÓLICOS###\n\n$(ls -l | grep -E "^[l]" | cut -c42-)" ;;
	"-d") echo -e "\n###SHELL SCRIPT###\n\n$(ls | grep -E ".*\.sh")" ;;
esac

