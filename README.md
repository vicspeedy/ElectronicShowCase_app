# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# ElectronicShowCase
* rails new ElectronicShowCase_app -d postgresql && cd ElectronicShowCase_app
* git add .
* git commit -m "Primer commit"
* git remote add origin https://github.com/vicspeedy/ElectronicShowCase_app.git
* git branch -M main
* git push -u origin main
## Generar Rama Develops
* git checkout -b develops # Cambia a la rama
* git push -u origin develops
* Configurar el repositorio de github en setting - default branch - develops - update - I understand, update the default branch
![Alt text](image.png)
### Cada Caracteristica debe subir en una rama separada
* git checkout -b 01-StaticPages
*
* rails g controller Pages home terms privacy 
### Run App
* rails s -b 0.0.0.0
### No se creo la BD desde la misma pagian "http://localhost:3000/" boton create database
### Crear BD
* rails db:create
### Cambiar ruta raiz
* root "pages#home"

