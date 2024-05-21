# ejercicio-shell-i

Variables

Ejercicio 1:
En el primer ejercicios ponemos tres variables una con el nombre, la edad y otra de ciudad. Al agregar el signo = se le asigna un valor a cada variable.
El correspondiente echo nos muestra el mensaje ya completo.

Ejercicio 2:
En ésta actividad similar a la anterior, se usa "read -p" para que muestre un texto o mensaje y se introduzcan valores a las variables que en éste caso son: "actividad" y "comida".
El parámetro echo hace que se muestren de nuevo un texto con los valores (respuestas) que se indicaron para cada variable.

Parámetros

Ejercico 1:
Al empezar con un IF, se consigue que si el número propuesto ($#) es menor (-lt) de 3, nos de un mensaje con echo señalando que es número incorrecto.
Después he añadido dos echo que muestren el primer parámetro introducido ($1) y el tercero ($3).

Ejercicio 2:
Para ésta actividad he tenido que crear un archivo de texto¡o (archivo.txt) en el que he escrito como ejemplo Linea 1 , 2 3 4 y 5.
En la primera línea "archivo=$1" se asigna el primer argumento que es un nombre de archivo en éste caso el archivo.txt. 
"TotalCaracteres=$(wc -w < "$archivo") : aquí utilizamos el comando wc para contar las palabras que están escritas dentro del archivo .txt. 
-w le dice a wc que solo cuente las palabras, y el símbolo < lo que hace es leer/procesar el contenido de .txt y su resultado es la salida del contenido y resultado del mismo.
Finalmente echo muestra el mensaje que indica cuántas palabras (parámetros) hay en el archivo.


Condicionales

Ejercicio 1:
Aquí se asigna el resultado del comando whoami (who am i) devolviendonos el nombre del usuario en este caso el nuestro al poner la variable current_user. 
La siguiente parte muestra unas condiciones:
if [ "$current_user" != "root" ]; then : esto quiere decir que si el nombre del usuario (current user) no es igual a "root" no es el usuario o administrador.
Entonces saldría un echo diciendo que no se tiene acceso como root.
En el caso de que los dos, root y user coincidiesen, se da un echo como acceso permitido.

Ejercicio 2:

En éste script se pide al usuario dos números, éste los compara y muestra mensajes según las condiciones que le demos.
 read -p "Introduce el primer número (n1): " n1: Esta primera línea utiliza el comando read para solicitar al usuario que ponga un valor. El texto entre comillas después de -p se muestra como un mensaje para el usuario. El valor que le demos se almacena en la variable n1.
 read -p "Introduce el segundo número (n2): " n2: Similar al paso anterior, esta línea solicita al usuario que ingrese otro valor y lo almacena en la variable n2.

La siguiente parte es una condicional utilizando if, then y else:
 if [ "$n1" -eq "$n2" ]; then: Esto verifica si los valores de n1 y n2 son iguales.
Si son iguales, se ejecuta el código dentro del then.
 elif [ "$n1" -gt "$n2" ]; then: Si los valores no son iguales, esta línea verifica si "n1" es mayor que "n2".
Si es cierto, se ejecuta el bloque de código dentro del elif.
Si ninguna de las condiciones anteriores es verdadera, dentro del else.
 Entonces (then):
echo "Los números son iguales": Esto muestra un mensaje si los valores ingresados son iguales.
 (Elif): echo "n1 es mayor que n2": Esto muestra un mensaje si n1 es mayor que n2.
 (Else):
 echo "n2 es mayor que n1": Esto muestra un mensaje si n2 es mayor que n1.

Ejercicio 3

En éste script verificamos si el numero que ingresa el usuario es divisible por 2 y muestra un mensaje correspondiente.

read -p "Introduce un número: " numero: solicita que pongamos un número. El texto entre comillas después de -p se muestra como un mensaje. El valor que hayamos ingresado se almacena en la variable numero.

La siguiente parte es una estructura condicional utilizando if, then y else:
if [ $(($numero % 2)) -eq 0 ]; then: Esto verifica si el resultado de dividir numero entre 2 es igual a 0.
Si es cierto (es decir, el número es divisible por 2), se ejecuta el bloque de código dentro del then.
Si la condición no se cumple (el residuo no es 0), se ejecuta el bloque de código dentro del else.
En then, veremos:
echo "El número $numero es divisible por 2.": Esto muestra un mensaje indicando que el número ingresado es divisible por 2.
En else, encontramos:
echo "El número $numero no es divisible por 2.": Esto muestra un mensaje si el número no es divisible por 2.


Sustitución de Comandos

Ejercicio 1:

Éste script pide la fecha de nacimiento, calcula la edad y muestra tanto la fecha de nacimiento como la fecha actual junto con la edad. 

1. Entrada de datos:
 Las primeras lineas utilizan read para poner el dia mes y año de nacimiento respectivamente.
 El texto que está entre comillas despues de -p, muestra el mensaje para el usuario.
Los varlores que pongamos se guardan en las variables d_int (dia) m_int (mes) y a_int (año)

Mostrar las fechas:
 La linea echo "Fecha de nacimiento: $d_int-$m_int-$a_int" muestra la fecha de nacimiento que hayamos ingresado previamente.
 Luego se obtiene la fecha actual con los comandos "date" correspondientes a dia mes y año.
 La linea echo "Fecha actual: $d_act-$m_act-$a_act" muestra la fecha actual.

Cálculo de la edad:
 Se calcula la edad restando el año de nacimiento (a_int) del año actual (a_act)
 Si el mes actual (m_act) es menor que el mes de nacimiento (m_int), se resta 1 a la edad.
 Ésto tiene en cuenta si el cumpleaños aún no ha ocurrido.

Mostrar la edad:
 echo "tienes $edad años." nos muestra la edad calculada.


Bucles

Ejercicio 1

Este bucle solicita al usuario que adivine el PID del script, y nos contesta en base a ello. Si lo adivinamos, se mostrará un mensaje de felicitación y se muestra el número de intentos.

pid=$$: Aquí, se asigna el valor del PID (identificador de proceso) que es como el DNI propio del script actual. El doble signo de dólar $$ representa el PID del proceso en que se está dando.

Ahora surge un contandor de intentos (intentos=0) llevará un registro de cuantos intentos ha realizado el usuario.

La funcion adivinar_pid contiene el bucle while true, que quiere decir que se estará ejecutando hasta que se rompa explicitamente (hasta adivinar el valor)

Dentro del bucle:
read -p (para solicitar que el usuario adivine el pid)
Se va sumando intentos al contador con intentos=$((intentos+1))
Luego, se compara el número que haya puesto el usuario (numero_ingresado) con el PID almacenado en "pid"
Si el numero es menor, se muestra un mensaje indicando que es menor. Al igual si es mayor.
En el caso de que sea igual, se muestra el mensaje de felicitación y el número de intentos.
Finalizando (rompiéndose) así el bucle con "break"

Al final aparece de nuevo adivinar_pid, iniciando de nuevo el proceso de adivinanza del PID.

Ejercicio 2

Éste script interactúa con el usuario para agregar, mostrar y borrar archivos en el directorio.
Funciones:

agregar_archivo(): esta funcion solicita que introduzcacmos el nombre de un nuevo archivo, lo crea con el comando touch y muestra un mensaje positivo.

mostrar_archivos(): muestra la lista de archivos en el directorio actual utilizando el comando ls .

borrar_archivo(): solicita que pongamos el nombre y la extensión del archivo que queremos eliminar. Luego, verifica su existencia y lo borra con rm (remove)

Despues de definir las funciones, agregar_archivo, crea un nuevo archivo.
Se espera durante 3 segundos utilizando sleep 3
Tras la espera, mostrar_archivos, muestra la lista de archivos en el directorio.
Al final, pregunta al usuario si quiere borrar un archivo. Si la respuesta es afirmativa, saldrá borrar_archivo .



