# Desafios semanales
En este repo se encuentran los desafios semanales del curso de backend dictado por Coderhouse.

# desafio 1. 

## Consigna: 

1) Declarar una clase Usuario

2) Hacer que Usuario cuente con los siguientes atributos:
* nombre: String
* apellido: String
* libros: Object[]
* mascotas: String[]

Los valores de los atributos se deberán cargar a través del constructor, al momento de crear las instancias.
3) Hacer que Usuario cuente con los siguientes métodos:
* getFullName(): String. Retorna el completo del usuario. Utilizar template strings.
* addMascota(String): void. Recibe un nombre de mascota y lo agrega al array de mascotas.
* countMascotas(): Number. Retorna la cantidad de mascotas que tiene el usuario.
* addBook(String, String): void. Recibe un string 'nombre' y un string 'autor' y debe agregar un objeto: { nombre: String, autor: String } al array de libros.
* getBookNames(): String[]. Retorna un array con sólo los nombres del array de libros del usuario.

4) Crear un objeto llamado usuario con valores arbitrarios e invocar todos sus métodos.

# Desafio 2

## Consigna:

Implementar programa que contenga una clase llamada Contenedor que reciba el nombre del archivo con el que va a trabajar e implemente los siguientes métodos:

* save(Object): Number - Recibe un objeto, lo guarda en el archivo, devuelve el id asignado.
* getById(Number): Object - Recibe un id y devuelve el objeto con ese id, o null si no está.
* getAll(): Object[] - Devuelve un array con los objetos presentes en el archivo.
* deleteById(Number): void - Elimina del archivo el objeto con el id buscado.
* deleteAll(): void - Elimina todos los objetos presentes en el archivo.

# Desafio 3

## Consigna:

Realizar un proyecto de servidor basado en node.js que utilice el módulo express e implemente los siguientes endpoints en el puerto 8080:
* Ruta get '/productos' que devuelva un array con todos los productos disponibles en el servidor
* Ruta get '/productoRandom' que devuelva un producto elegido al azar entre todos los productos disponibles
Incluir un archivo de texto 'productos.txt' y utilizar la clase Contenedor del desafío anterior para acceder a los datos persistidos del servidor.

Antes de iniciar el servidor, colocar en el archivo 'productos.txt' tres productos como en el ejemplo del desafío anterior.

# Desafio 4 

## Consigna:

Realizar un proyecto de servidor basado en node.js y express que ofrezca una API RESTful de productos. En detalle, que incorpore las siguientes rutas:
* GET '/api/productos' -> devuelve todos los productos.
* GET '/api/productos/:id' -> devuelve un producto según su id.
* POST '/api/productos' -> recibe y agrega un producto, y lo devuelve con su id asignado.
* PUT '/api/productos/:id' -> recibe y actualiza un producto según su id.
* DELETE '/api/productos/:id' -> elimina un producto según su id.

* Para el caso de que un producto no exista, se devolverá el objeto:
{ error : 'producto no encontrado' }
* Implementar los métodos de la API en una clase separada, utilizando para la persistencia de sus productos un contenedor de los desarrollados en clases anteriores.
* Incorporar el Router de express en la url base '/api/productos' y configurar todas las subrutas en base a este.
* Crear un espacio público de servidor que contenga un documento index.html con un formulario de ingreso de productos con los datos apropiados.
* El servidor debe estar basado en express y debe implementar los mensajes de conexión al puerto 8080 y en caso de error, representar la descripción del mismo.
* Las respuestas del servidor serán en formato JSON. La funcionalidad será probada a través de Postman y del formulario de ingreso.

# Desafio 5:

## Consigna :

Utilizando la misma API de productos del proyecto entregable de la clase anterior, construir un web server (no REST) que incorpore:
* Un formulario de carga de productos en la ruta raíz (configurar la ruta '/productos' para recibir el POST, y redirigir al mismo formulario).
* Una vista de los productos cargados (utilizando plantillas de handlebars) en la ruta GET '/productos'.
Ambas páginas contarán con un botón que redirija a la otra.

# Desafio 6

## >> Consigna 1:  

Modificar el último entregable para que disponga de un canal de websocket que permita representar, por debajo del formulario de ingreso, una tabla con la lista de productos en tiempo real. 
* Puede haber varios clientes conectados simultáneamente y en cada uno de ellos se reflejarán los cambios que se realicen en los productos sin necesidad de recargar la vista.
* Cuando un cliente se conecte, recibirá la lista de productos a representar en la vista.

# Consigna 2:  
Añadiremos al proyecto un canal de chat entre los clientes y el servidor.

* En la parte inferior del formulario de ingreso se presentará el centro de mensajes almacenados en el servidor, donde figuren los mensajes de todos los usuarios identificados por su email. 
El formato a representar será: email (texto negrita en azul) [fecha y hora (DD/MM/YYYY HH:MM:SS)](texto normal en marrón) : mensaje (texto italic en verde) 
* Además incorporar dos elementos de entrada: uno para que el usuario ingrese su email (obligatorio para poder utilizar el chat) y otro para ingresar mensajes y enviarlos mediante un botón. 
* Los mensajes deben persistir en el servidor en un archivo (ver segundo entregable).



