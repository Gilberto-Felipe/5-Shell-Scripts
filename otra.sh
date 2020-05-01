#! /bin/bash

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


