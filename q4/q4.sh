#!/bin/bash
read -p "Digite um endereço de IP: " ip

oct1=$(echo $ip | cut -d '.' -f 1)
oct2=$(echo $ip | cut -d '.' -f 2)
oct3=$(echo $ip | cut -d '.' -f 3)
oct4=$(echo $ip | cut -d '.' -f 4)

bin1=$(echo -e "obase=2; ibase=10 ; $oct1" | bc)
bin2=$(echo -e "obase=2; ibase=10 ; $oct2" | bc)
bin3=$(echo -e "obase=2; ibase=10 ; $oct3" | bc)
bin4=$(echo -e "obase=2; ibase=10 ; $oct4" | bc)

echo -e "Octeto #1: $oct1 em binário $bin1"
echo -e "Octeto #2: $oct2 em binário $bin2"
echo -e "Octeto #3: $oct3 em binário $bin3"
echo -e "Octeto #4: $oct4 em binário $bin4"

