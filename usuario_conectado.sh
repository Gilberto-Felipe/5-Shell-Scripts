#!/bin/bash

# Elabora un script que lea el nombre de un usuario y verifique si se encuentra registrado en el sistema. Se debe imprimir un mensaje que indique si es usuario registrado o no. el script debe iterar solicitando un nuevo nombre de usuario hasta que la cadena que se introduzca sea “fin”. Si es necesario, crea nuevos usuarios para probar el script.


usuario_conectado() {

	# lee un usuario
	read -p "Ingresa un usuario: " user 

	FIN="fin"

	ESTA_REGISTRADO=`grep -E ^$user: /etc/passwd`

	# verifica si está registrado en el sistema
	if [ $user != $FIN ]; then
		if [ -z "$ESTA_REGISTRADO" ]; then
			echo "NO está conectado."
		else
			echo "SI está conectado."
		fi
		usuario_conectado
	else
		exit
	fi
}

usuario_conectado