## Despliegue mediante Dockerfile

## 1. Ejecutar el comando para construir la imagen del Dockerfile, de la siguiente forma:
* sudo docker build -t [nombre]:[versión] [ubicación del dockerfile]

Ejempl:

Si el Dockerfile esta en el directorio actual se usa "." para indicar esto, si no se coloca la ruta del directorio:

* sudo docker build -t chur:v01 .

## 2. Verificar que se haya construido la imagen:
* sudo docker image ls

Aparecen todos los parametros con los que se creo la imagen, aqui saldria primero chur y luego v01

## 3. Correr la imagen en un segundo plano.

Para correr contenedor con la imagen creada:
* sudo docker run [forma de ejecución] [parametro de puerto] [puerto maquina local]:[puerto expuesto en contenedor] [imagen a correr]

Para la ejecucion en nuestro caso, quedaria de la siguiente forma (enlanzando los puertos 80 puesto que fue el que expusimos):
* sudo docker run -d -p 80:80 chur:v01**