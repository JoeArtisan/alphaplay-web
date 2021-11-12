# AlphaPlay

## Acerca de AlphaPlay



## Requisitos
- MySQL 8
- PHP 7
- Composer 2
- NodeJS 14

## Instalacion
Clonar el repositorio del proyecto:
```
$ git clone https://github.com/JoeArtisan/alphaplay

```

Instalar dependencias Backend:
```
$ cd alphaplay
$ composer install
```

Instalar dependencias Frontend:
```
$ npm install
```

Crear archivo de ambiente:
```
$ cp .env.example .env
```

Crear las claves de aplicacion:
```
$ php artisan key:generate
```

Crear base de datos:
```
> create database db_alphaplay;
```

Modificar archivo de ambiente .env:
```
DB_DATABASE=db_alphaplay
DB_USERNAME=alphaplay
DB_PASSWORD=12345678
```

Migrar base de datos:
```
$ php artisan migrate:fresh
```

Correr servicio backend:
```
$ php artisan serve
```

Correr servicio frontend:
```
$ npm run watch
```