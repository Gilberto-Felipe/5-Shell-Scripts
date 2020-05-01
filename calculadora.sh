#! /bin/bash

# Elabora un script que lea dos números y un operador (+, -, *, /) y que imprima el resultado de la operación seleccionada. 
# Para el caso de la resta se debe imprimir también el valor absoluto del resultado (restar siempre el número menor del mayor). 
# El proceso se debe repetir hasta que se introduzca el valor  0 en cada uno de los números y el valor “q” en el operador (se deben cumplir las tres condiciones).

a=-1
b=-1
op='?'

until [ $a = 0 -a $b = 0 -a $op='q' ]
do
    read -p "First number: " a 
    read -p "Operator. It can be [ +, -, * , / ]: " op
    read -p "Second number: " b

    case "$op" in
        +) echo $(( $a + $b ));;
        -) echo $(( $a - $b ));;
        /) echo $(( $a / $b ));;
        *) echo $(( $a * $b ));;
    esac
done

echo "Bye"



