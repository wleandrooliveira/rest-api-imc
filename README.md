## API Rest para calculo de IMC

O projeto foi desenvolvido utilizando Frameword Ruby On Rails 6.1.4, utilizando Ruby 3.0.1, a api inicialmente só possui um endpoit para efetuar o calculo de IMC.

### Requisitos para o projeto:

- Rails 6.1.4;
- Ruby 3.0.1;
- Sqlite;
- Devise;
- Simple Token Authetication;
- Swagger;

### 1)Download do projeto

```
$ https://github.com/wleandrooliveira/rest-api-imc.git
$ cd rest-api-imc
$ bundle install
```
### 2) Executando as migrations existentes
```
$ rails db:migrate
```

### 3) Executando a api
```
$ rails s -p 3001
```
### 4) Acessando o swagger da API

- https://localhost:3001/swagger/index.html
* ...

### 5) Testando a API no Postman 

- Importar no Postman a Collection que Rails.postman_collection.json existente no diretório raiz do projeto.

