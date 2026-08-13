# Imagen base oficial de Node.js
FROM node:18

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos de dependencias primero (para aprovechar cache de Docker)
COPY package.json ./
# Si usas Yarn:
# COPY package.json yarn.lock ./
# RUN yarn install
# Si usas NPM:
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usa tu servidor
EXPOSE 10000

# Comando de inicio: ajusta al archivo principal de tu app
CMD ["node", "UT.js"]
