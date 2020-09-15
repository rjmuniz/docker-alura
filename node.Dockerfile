FROM node:latest
LABEL maintainer="rjmuniz@gmail.com"


ENV PORT=3000
ENV AUTHOR=rjmuniz
#copia de uma pasta para outra
COPY ./volume-exemplo /var/www

# diretório que executa a aplicação
WORKDIR /var/www 

# instala as dependencias
RUN npm install

# inicio da aplicação
ENTRYPOINT npm start

# expoem a porta 3000
EXPOSE $PORT

