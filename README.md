# Evidências

## Task 01

Nesta tarefa foram foram escritos 2 arquivos: Dockerfile e docker-compose.yml.
Eu consegui fazer a build do petclinic usando seu banco padrão e também usando o MySQL após pular os testes unitários usando a flag -DskipTests.
Usei várias imagens como por exemplo maven:3.6-jdk-8-alpine porém sem sucesso.

Tentei inserir os dados de migrations diretamente como pode ser verificado no docker-compose.yml.

Ao dockerizar tudo ocorrem erros de comunicação com o banco. nunca tive contato com o java e não soube debugar o que ocorre com o JDBC.

Acredito que com mais experência com Java eu possa completar essa task.

A imagem do spring-petclinic pode ser acessada em:
https://cloud.docker.com/u/sandinoandroid/repository/docker/sandinoandroid/spring-petclinic

Os arquivos podem ser conferidos no diretório task1.


## Task 02

Os pipelines demonstrados automatizam a dockerização, ambiente de desenvolvimento, deploy em produção, teste de cobertura e qualidade de código com o SonarQube e a criação de um repositório privado e proxy para o docker.io com Nexusv3.

A aplicação utilizada foi um app de Todo-list feito em Django.
https://github.com/sandinocoelho/jenkins-todo-list.git


Fiz o commit das imagens e estão disponíveis no repositório abaixo:
https://hub.docker.com/u/sandinoandroid

Apenas a imagem do jenkins não foi dockerizada pois acabei utilizando a instalação direto na máquina virtual. Porém, dentro do diretório task2 pode ser encontraado um backup que pode ser restaudado no Jenkins com o plugin ThinBackup https://wiki.jenkins-ci.org/display/JENKINS/thinBackup.

Todos os arquivos encontram-se no diretório task2.


## Task 03

A Task 3 foi completada usando a interface de linha de comando. Fiz o upload das imagens docker com os comandos:

$ docker login -u admin -p Pk466at2 localhost:8082;
$ docker tag localhost:8082/django_todolist_image_build:lts
$ docker push localhost:8082/django_todolist_image_build:lts

$ docker login -u admin -p Pk466at2 localhost:8082;
$ docker tag localhost:8082/django_todolist_image_build:latest
$ docker push localhost:8082/django_todolist_image_build:latest

Os screenshots estão no diretório task3
