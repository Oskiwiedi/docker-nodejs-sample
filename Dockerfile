# syntax=docker/dockerfile:1

# Basis-Image mit Node.js 18 (Debian statt Alpine, da Build-Tools benötigt werden)
FROM node:18

# Setze Umgebungsvariable auf Produktionsmodus
ENV NODE_ENV=production

# Arbeitsverzeichnis im Container
WORKDIR /usr/src/app

# Kopiere package-Dateien
COPY package*.json ./

# Installiere System-Abhängigkeiten (für native Module wie sqlite3)
RUN apt-get update && apt-get install -y python3 make g++ \
    && rm -rf /var/lib/apt/lists/*

# Installiere Node.js-Abhängigkeiten
RUN npm ci --omit=dev

# Kopiere den Rest des Codes ins Image
COPY . .

# Öffne Port 3000
EXPOSE 3000

# Starte die Anwendung
CMD ["node", "src/index.js"]
