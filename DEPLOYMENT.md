## Local
Las siguientes instrucciones son para hacer un deploy utilizando docker.

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

## Heroku con Container Registry y Heroku CLI
Para hacer el deploy a Heroku, se requiere crear una base de datos MariaDB. Para el desarrollo y deployment se utilizó el plugin ClearDB en Heroku, con lo cual se obtiene un URL que se utiliza en la variable de ambiente DATABASE_URL.

### 1. Clonar y acceder al repositorio
```shell
$ git clone https://github.com/ProyectoIntegrador2018/i2t2.git
$ cd i2t2
```

### 2. Copiar el archivo .env a la raíz del repositorio (este archivo no está en Github porque contiene contraseñas de servicios y detalles, solicitarlo a algún miembro del equipo)

### 3. Log in a una cuenta de Heroku
```shell
$ heroku login
```

### 4. Sign in al Container Registry
```shell
$ heroku container:login
```

### 5. Hacer push de la imagen de Docker
```shell
$ heroku container:push web
```

### 6. Hacer el deploy de la imagen
```shell
$ heroku container:release web
```
