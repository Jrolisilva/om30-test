This is a Ruby on Rails project configured with Docker, making it easier to run and develop the application in different environments.

Environment Setup

Docker installed

Docker Compose installed

Initializing the Project

### Build and start the containers
`docker-compose up -d --build`

### Create the database
`docker-compose exec web bin/rails db:create RAILS_ENV=development`

### Run database migrations
`docker-compose exec web bin/rails db:migrate RAILS_ENV=development`

### Seed the database with initial data
`docker-compose exec web bin/rails db:seed RAILS_ENV=development`

### Running Tests
Access the shell inside the container
`docker exec -it om30-test-web-1 bash`

### Run RSpec tests
`bundle exec rspec`

### Stopping and Removing Containers
`docker-compose down --volume`


Imagens do Projeto
![Captura de tela de 2024-03-04 21-13-19](https://github.com/Jrolisilva/om30-test/assets/71659399/0a33d011-367b-49a3-a5d9-ec99fddcf111)

### Formulario
![Captura de tela de 2024-03-04 21-14-44](https://github.com/Jrolisilva/om30-test/assets/71659399/30b659dd-34fc-4fd2-8915-43bdbef8ec2a)
