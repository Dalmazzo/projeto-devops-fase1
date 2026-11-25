# Usa uma imagem leve e oficial do Node.js
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências e instala apenas o necessário para produção
COPY package*.json ./
RUN npm install --omit=dev

# Copia o restante do código da aplicação
COPY . .

# Comando executado ao iniciar o container
CMD ["node", "app.js"]