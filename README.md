# Projet MOBIDIT

Bienvenue dans ce projet Full Stack qui combine les technologies React, Node.js, MySQL et Docker.

## Prérequis
Assurez-vous d'avoir les outils suivants installés sur votre machine avant de commencer :
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Node.js](https://nodejs.org/) et [Yarn](https://yarnpkg.com/) pour le développement en local

## Configuration du projet

1. Clonez le dépôt depuis GitHub :
   ```bash
   git clone ['ssl', 'http'] {le_projet}
   cd micro-services-node
   ```

2. Dans le dossier 'node-back', créez un fichier `.env` pour configurer les variables d'environnement du backend :
   ```env
   DATABASE_URL="mysql://user:password@localhost:3006/test?schema=public"
   ```

## Développement en local

### Backend (Node.js)

1. Accédez au dossier du backend :
   ```bash
   cd node-back
   ```

2. Installez les dépendances :
   ```bash
   yarn
   ```

3. Lancez le serveur Node.js :
   ```bash
   yarn dev
   ```

Le serveur backend sera accessible à l'adresse http://localhost:3008.

### Frontend (React)

1. Accédez au dossier du frontend :
   ```bash
   cd react-front
   ```

2. Installez les dépendances :
   ```bash
   yarn
   ```

3. Lancez l'application React :
   ```bash
   yarn dev
   ```

L'application frontend sera accessible à l'adresse http://localhost:3000.

## Base de données MySQL

La base de données MySQL sera accessible à l'adresse `localhost` sur le port `3306`. Utilisez les informations de configuration définies dans le fichier `.env` pour vous connecter.

## Docker Compose

Utilisez Docker Compose pour exécuter l'ensemble du projet de manière isolée. À la racine du projet, exécutez la commande suivante :
   ```bash
   docker-compose up
   ```

L'application complète sera accessible à l'adresse http://localhost:3000.

## Déploiement

Pour déployer l'application en production, configurez les variables d'environnement appropriées dans le fichier `.env` du backend et utilisez Docker Compose pour orchestrer les services.

---

Enjoy it !