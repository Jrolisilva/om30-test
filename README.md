## Test OM30 
Este é um projeto Ruby on Rails configurado com Docker, facilitando a execução e desenvolvimento do aplicativo em diferentes ambientes.

Configuração do Ambiente
Pré-requisitos

Docker instalado

Docker Compose instalado

Inicializando o Projeto

### Construir e iniciar os contêineres
`docker-compose up -d --build`

### Criar o banco de dados
`docker-compose exec web bin/rails db:create RAILS_ENV=development`

### Executar migrações do banco de dados
`docker-compose exec web bin/rails db:migrate RAILS_ENV=development`

### Preencher o banco de dados com dados iniciais
`docker-compose exec web bin/rails db:seed RAILS_ENV=development`

### Executando Testes acessar o shell dentro do contêiner
`docker exec -it om30-test-web-1 bash`

### Executar os testes RSpec

`bundle exec rspec`

### Parando e Removendo Contêineres
`docker-compose down --volume`


Imagens do Projeto
![Captura de tela de 2024-03-04 21-13-19](https://github.com/Jrolisilva/om30-test/assets/71659399/0a33d011-367b-49a3-a5d9-ec99fddcf111)

### Formulario
![Captura de tela de 2024-03-04 21-14-44](https://github.com/Jrolisilva/om30-test/assets/71659399/30b659dd-34fc-4fd2-8915-43bdbef8ec2a)
