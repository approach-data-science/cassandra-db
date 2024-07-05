# cassandra-db
Se crea una base de datos en Cassandra para el manejo de volúmenes de datos, la aplicación es sencilla solo de pruebas para la gestión de libros en una biblioteca XYZ

En terminos generales, se crea una interfaz de consola que le pide al usuario realizar alguna de las operaciones programadas en las funciones creadas en los distintos apartados o salir de la aplicación pulsando 0. La elección se realizará a través de un número introducido por el usuario empezando por el 1. 
Se explica al usuario la operación ejecutada a través de mensajes por pantalla.


Se compone de las carpetas

-DB: Posee los scripts de creación de la BD y el script con datos para prueba
-model: Se encuentran las clases del modelo de datos, dtos necesarios y procesamiento contra la BD.
-service: Logica de negocio 
-utils: Utilidades generales
