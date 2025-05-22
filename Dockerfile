# Utilise une image officielle Node.js comme image parente
FROM node:22-alpine

# Définit le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste des fichiers de l'application
COPY . .

# Expose le port que l'application utilise
EXPOSE 3000

# Commande pour lancer l'application
CMD ["node", "server.js"]