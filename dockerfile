# syntax=docker/dockerfile:1

FROM node:26-alpine

WORKDIR /app

# Copiamos solo los manifiestos primero para aprovechar la caché de capas
COPY src/package*.json ./

RUN npm install --omit=dev

# Copiamos el resto del código fuente
COPY src/ .

EXPOSE 3000

CMD ["npm", "start"]