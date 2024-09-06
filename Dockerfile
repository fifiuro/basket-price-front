# Establecer la imagen base
FROM node:18

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el codigo fuente
COPY . .

# Exponer el puerto en el que se ejecutara la aplicacion Angular
EXPOSE 4200

# Comando para iniciar la aplicacion Angular en modo desarrollo
CMD [ "npm", "run", "start" ]