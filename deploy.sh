#!/bin/bash
echo "Iniciando o deploy da aplicação containerizada..."

# Para e remove containers antigos, se existirem
docker compose down

# Constrói a imagem atualizada e sobe o container em segundo plano
docker compose up -d --build

echo "Deploy concluído com sucesso! Verificando status:"
docker ps --filter "name=projeto-devops-app"