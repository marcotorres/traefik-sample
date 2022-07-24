# Proyecto de Traefik Sample

## Requisitos

- git 2.2 o superior
- docker 20 o superior
- docker-compose 1.20 o superior
- Configura tus claves públicas y privadas con Bitbucket/Github para siempre usar SSH con GIT
- Adrenalina y buena pasión por el código

## Iniciando en el proyecto

Clona el proyecto de traefik-sample en tu directorio de trabajo, por ejemplo:

```
mkdir Github
cd Github
git clone git@github.com:marcotorres/traefik-sample.git
```

La rama por defecto es master

## Repositorios del proyecto

El proyecto muestra un api de ejemplo y una web:

    * api
    * web

Por ejemplo puedes colgar aquí un api con laravel y un PWA con react o vue.

## Consideraciones para instalar en prod

Para poder usar traefik es necesario crear una red, para ello ejecutamos el siguiente comando:

    docker network create --gateway 192.168.90.1 --subnet 192.168.90.0/24 traefik

Ejecutar los siguientes comandos:
    
    cp .env.example .env
    cp traefik/acme.json.example traefik/acme.json
    cp traefik/logs/traefik.log.example traefik/logs/traefik.log
    cp traefik/shared/.htpasswd.example traefik/shared/.htpasswd
    chmod 0600 traefik/acme.json

Nota: Recuerde usar el modo beta de letsencrypt para la generación de certificados SSL y el contenido de acme.json
al inicio debe de ser {}

## Contribuyendo al proyecto

Las ramas por defecto según el proyecto en el que te encuentres (dentro del directorio apps)
En el caso de que tengas algún cambio, corrección, refactorización, documentación, etc. deberías de registrarlo
en un issue y detallar en lo mínimo o al menos que se entienda el objetivo luego de creado el issue con el número
podrás crear otra rama en tu local y/o remoto a partir de la rama por defecto de cada proyecto:

```
código del issue Mensaje corto de lo que se hizo en el commit.
```

Los tipos de commit:

- *feature*: Nuevo requerimiento o funcionalidad o proceso adicional nuevo.
- *hotfix*: Corrección de un proceso o funcionalidad urgente.
- *bugfix*: Corrección de un proceso o funcionalidad.

En el caso de que no exista issue registrado (número de issue) por tiempo o premura o prioridad del caso el patron del envío sería:

```
Mensaje corto de lo que se hizo en el commit.
```