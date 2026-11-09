Cache Docker : j'ai placé COPY requirements.txt et RUN pip install avant COPY . . afin de conserver le cache des dépendances quand on modifie que le code

Optimisation de l'image : j'ai utilisé python:3.12-slim dès la version naïve. L'ajout du .dockerignore a permis de réduire la taille de l'image de 1,1 Go à 602 Mo 

Sécurité et configuration : j'ai créé un utilisateur non-root et configuré les permissions du dossier /app/outpu,  OUTPUT_DIR pour choisir le répertoire de sortie et de récupérer le fichier Parquet sur l'hôte grâce à un volume