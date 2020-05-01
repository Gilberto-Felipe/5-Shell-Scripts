#! /bin/bash

# 1. Elabora un script que reciba como parámetros nombres de personas e imprima un saludo para  cada uno de ellos. Si no se intoducen parámetros se deberá mostrar un mensaje que indique que se debe introducir al menos un nombre. Prueba como se puede introducir como parámetro un nombre compuesto de dos o más palabras.
# Ej. (Supongamos que el script se llama saludaa)
# ./saludaa Juan Pedro José
# Hola Juan
# Hola Pedro
# Hola José


if [ $# -le 0 ]; then  
    echo "Hay que introducir al menos un parámetro."
else
    IFS=$'\n'
    arg=($@)
    for arg in ${arg[*]}
    do
        echo "Hola $arg"
    done
fi

