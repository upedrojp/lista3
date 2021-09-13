#!/bin/bash

while read a; do
	if echo $a | grep -E "\w+@\w+\.\w+" &> /dev/null;then
		echo -e "OK: $a"
	else
		echo -e "FAIL: $a"
	fi
done < $1
