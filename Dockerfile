# Usar la imagen base de Node.js
FROM node:14

# Crear y definir el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el package.json y package-lock.json al contenedor
COPY package*.json ./

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar todo el código de la aplicación al contenedor
COPY . .

# Exponer el puerto que la aplicación utilizará
EXPOSE 3000

# Ejecutar la aplicación
CMD ["node", "app.js"]
