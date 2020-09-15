## 
sudo usermod -aG docker $(whoami)

sudo docker run dockersamples/static-site
sudo docker run -d dockersamples/static-site 
sudo docker run -d -P dockersamples/static-site 
docker ps
docker port cont_id
docker stop contid
docker rm contid
sudo docker run -d -P --name site-static dockersamples/static-site 

sudo docker run -d -p myport:contport --name site-static dockersamples/static-site # setando a porta
sudo stop -t 0 $(docker ps -q)  # para todos os containers

## volumes
docker run -v "/var/www" ubuntu
docker inspect
docker run it -v "/myfile/:contFilder" -d -P xpto
docker run -it -v "/home/rjmuniz/workspace/docker/curso_alura/:/var/www" ubuntu

# volume com code
docker run -d -p 3000:3000 -v "/home/rjmuniz/workspace/docker/curso_alura/exemplo:/var/www" -w "/var/www" node npm startd 

# build image
docker build -f node.dockerfile -t rjmuniz/exemplo-node .

# push
docker login 
docker push rjmuniz/exemplo-node


## network
docker network create --driver bridge minha-rede
docker run -if --name meu-container --network minha-rede ubuntu # consigo usar o nome ao inves do IP


## docker pull douglasq/alura-books:cap05
docker run -d --name meu-mongo --network minha-rede mongo 
docker run -d --network minha-rede  -p 8080:3000 douglasq/alura-books:cap05
docker network ls
docker network inspect minha-rede
http://localhost:8080/
http://localhost:8080/seed ## cria os registros 
http://localhost:8080/ 


cd /alura-docker-cap06
docker-compose build # build
docker-compose up -d # roda
docker-compose down  # para e remove
