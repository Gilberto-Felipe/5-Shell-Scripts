#! /bin/bash

# Elabora un script semejante al anterior, pero ahora los parámetros deben ser rutas absolutas que se deberán agregar a la variable de ambiente PATH. 
#Imprimir la variable. La modificación de la variable debe ser temporal, es decir, antes de finalizar el script la variable debe regresar a su valor inicial.
# Ej.
# ./Agrega_a_PATH  /home/user1  /etc/sysctl.d
# Nuevo valor de PATH
# (… lista de rutas ya definidas …):/home/user1:/etc/sysctl.d


# Saving PATH value
temp=$PATH

echo "Original PATH: $PATH"
echo "Total number of command line arguments: $#"
echo "Array of parameters: $*"

# validating that a directory exists
if [ $# -le 0 ]; then  
    echo "Introduce, at least, one directory."
else
    # iterate upon the array of parameters, and add them to the PATH
    for directory in $*; do
        PATH="$PATH:$directory"
    done
fi

echo "New PATH: $PATH"

# Original PATH
PATH=$PATH

echo "PATH returned to original: $PATH"

