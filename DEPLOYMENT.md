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

### 4. Correr servicio de la base de datos
```shell
$ docker-compose up -d mariadb
```

### 5. Crear base de datos dentro del contenedor
```
$ docker-compose run web bash
# rails db:create
# rails db:migrate
```

### 6. Ejecutar aplicación web
```shell
$ docker-compose up
```

### 7. Detener ejecución de aplicación web
```shell
$ docker-compose down
```