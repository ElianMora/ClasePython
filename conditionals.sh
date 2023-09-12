#! /bin/bash

read -p "Introduce tu edad " age
echo "tu edad es: "$age

: '
    -eq: igual
    -le: Lower or equal
    -ge: greater or equal
    -lt: lower than
    -gt: greater than
    comentario multilinea
'

if (($age >= 31 ))
then
    echo "ya puedes votar"
elif [ $age -eq 30 ] || [ $age -eq 29 ]
then
    echo "ya eres viejo"
else
    echo "vuelve a la primaria"
fi