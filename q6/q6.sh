#!/bin/bash

read -p "Digite uma senha: " senha
echo $senha | grep -E '.{8,}' &> /dev/null && echo $senha | grep -E '[A-B]' &> /dev/null && echo $senha | grep -E '[0-9]' &> /dev/null && echo -e "SENHA VÁLIDA" || echo -e "SENHA NÃO VÁLIDA"
