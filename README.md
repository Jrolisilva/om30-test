## Projeto Rails com Docker
Este é um projeto Ruby on Rails configurado com Docker, facilitando a execução e desenvolvimento do aplicativo em diferentes ambientes.

Configuração do Ambiente
Pré-requisitos
Docker instalado
Docker Compose instalado
Inicializando o Projeto
bash
Copy code
### Construir e iniciar os contêineres
docker-compose up -d --build

### Criar o banco de dados
docker-compose exec web bin/rails db:create RAILS_ENV=development

### Executar migrações do banco de dados
docker-compose exec web bin/rails db:migrate RAILS_ENV=development

### Preencher o banco de dados com dados iniciais
docker-compose exec web bin/rails db:seed RAILS_ENV=development
Executando Testes
bash

Copy code
### Acessar o shell dentro do contêiner
docker exec -it om30-test-web-1 bash

### Executar os testes RSpec
bundle exec rspec
Parando e Removendo Contêineres
bash
Copy code
### Parar os contêineres
docker-compose down
Estrutura do Projeto
app: Contém o código-fonte do aplicativo.
config: Configurações do Rails.
db: Migrações do banco de dados.
spec: Testes RSpec.
Gemfile, Gemfile.lock: Dependências do Ruby.