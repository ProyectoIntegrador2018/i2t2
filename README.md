# Sistema de Información para Impulsar el Conocimiento y la Innovación Tecnológica
El Sistema de Información para Impulsar el Conocimiento y la Innovación Tecnológica es una plataforma web que integra información accionable y actualizada relacionada a CTI.

[![Maintainability](https://api.codeclimate.com/v1/badges/93c30356afc8ec073de1/maintainability)](https://codeclimate.com/github/ProyectoIntegrador2018/i2t2/maintainability)


## Tabla de Contenidos

* [Detalles del cliente](#detalles-del-cliente)
* [Equipo](#equipo)
* [Recursos de gestión](#recursos-de-gesti%c3%b3n)
* [Stack Tecnológico](#stack-tecnol%c3%b3gico)
* [Desarrollo](#desarrollo)


## Detalles del cliente

| Email                    | Rol  |
| ------------------------ | ---- |
| sistemas@mtycic.org | I2T2 |



## Equipo

### Actual

| Nombre            | Email              | Rol                 |
| ----------------- | ------------------ | ------------------- |
| Gerardo Osio      | A01281037@itesm.mx | Product Owner       |
| Héctor Salazar    | A01207471@itesm.mx | Admin Proyecto      |
| Joao Moura        | A01193400@itesm.mx | Scrum Master        |
| Alejandro Sanchez | A01272385@itesm.mx | Admin Configuración |

### Pasado(s)

| Nombre           | Email              | Rol                 |
| ---------------- | ------------------ | ------------------- |
| Adán Villarreal  | A01281312@itesm.mx | Product Owner       |
| Andrés Martínez  | A00817465@itesm.mx | Admin Proyecto      |
| Diego Jiménez    | A01139513@itesm.mx | Scrum Master        |
| Irvel Nduva      | A01196346@itesm.mx | Admin Configuración |


## Recursos de gestión

* [Github](https://github.com/ProyectoIntegrador2018/i2t2)
* [Backlog](https://github.com/ProyectoIntegrador2018/i2t2/projects/1)
* [Documentación](https://drive.google.com/drive/u/0/folders/1uFPGhjOCXoBu2vqc1K5IbrAGO_2TkbWh)


## Stack Tecnológico

### Librerias:
* Ruby on Rails
* ActiveAdmin

### Persistencia de datos:
* MySQL

## Desarollo

### 1. Clonar y acceder al repositorio
```shell
$ git clone https://github.com/ProyectoIntegrador2018/i2t2.git
$ cd i2t2
```

### 2. Copiar el archivo .env a la raíz del repositorio (este archivo no está en Github porque contiene contraseñas de servicios y detalles, solicitarlo a algún miembro del equipo)

### 3. Hacer build con docker-compose
```shell
$ docker-compose build
```

### 4. Ejecutar aplicación web
```shell
$ docker-compose up
```

### 5. Detener ejecución de aplicación web
```shell
$ docker-compose down
```
