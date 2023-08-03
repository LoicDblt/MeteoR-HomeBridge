# Première étape
FROM python:latest AS builder
COPY requirements.txt .

# Installe les dépendances dans le répertoire utilisateur (eg. /root/.local)
RUN pip install --user -r requirements.txt

# Seconde étape
FROM python:slim
WORKDIR /app

# Copie les dépendances depuis la première étape
COPY --from=builder /root/.local /root/.local
ADD /src .

EXPOSE 8080:8080
CMD ["python", "homeBridge_Si7021.py"]