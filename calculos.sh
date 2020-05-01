#! /bin/bash

# Crea un archivo de texto que contenga un conjunto de números cualesquiera y elabora un script que lea dichos números 
# y que calcule e imprima el máximo, el mínimo, el promedio y la desviación estándar. 
# El nombre del archivo deberá ser introducido como un parámetro.

datos=`cat $*`
total_num=0
suma=0 
max=1
min=99999
promedio=0
xdistancia=""
suma_distancia=0
desviacionE=0


# going through the array of data, one element per iteration
for num in $datos
do
    # knowing total of elements
    total_num=$((total_num+1))

    # getting the sum of the elements
    suma=$((suma + num))

    # ordering the numbers quick sort min
    if [ $num -lt $min ]; then
        min=$num
    fi

    # ordering the numbers quick sort max
    if [ $num -gt $max ]; then
        max=$num
    fi
done

promedio=$((suma / total_num))

# getting the sum of distance of each element to the average
for num in $datos
do
    xdistancia=$((num - promedio))
    xdistancia=$((xdistancia * xdistancia))
    suma_distancia=$((suma_distancia + xdistancia))
done


suma_num_elementos=`echo "scale=2; $suma_distancia / $total_num" | bc`

desviacionE=`echo "scale=2; sqrt($suma_num_elementos)" | bc`

echo "Conjunto de datos: $datos"
echo "Total de números: $total_num"
echo "Mínimo: $min"
echo "Máximo: $max"
echo "Promedio: $promedio"
echo "Suma de la distancia de cada elemento del promedio: $suma_distancia"
echo "Suma sobre el numero de elementos: $suma_num_elementos"
echo "Desviación estandar: $desviacionE"

echo "Well done."





