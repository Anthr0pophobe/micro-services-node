# Utiliser l'image MySQL officielle
FROM mysql:latest

# Informations sur l'utilisateur et le mot de passe de la base de données
ENV MYSQL_DATABASE=mydatabase \
    MYSQL_USER=user \
    MYSQL_PASSWORD=password \
    MYSQL_ROOT_PASSWORD=rootpassword

# Copier le fichier db.sql dans le conteneur
COPY db.sql /docker-entrypoint-initdb.d/

# Exposer le port MySQL
EXPOSE 3306 
