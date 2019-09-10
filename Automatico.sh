#! /bin/bash

echo "Iniciando a plataforma Ushahidi..."

if ! sudo docker container rm platformrelease_ushahidi_1

then 
  echo "O container não existe!"
  exit 1
  
fi
echo "Container removido com sucesso"

cd platform-release

if ! sudo docker-compose up

then
  echo "Aconteceu um erro durante a inicialização!"
  exit 1
  
fi
echo "A plataforma está online!"
