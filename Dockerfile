# 1. Basis-Image setzen (leichtgewichtiges Node.js-Image)
FROM node:18-alpine

# 2. Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# 3. Package-Dateien kopieren und Abhängigkeiten installieren
COPY package.json package-lock.json ./
RUN npm install --production

# 4. Anwendungscode kopieren
COPY . .

# 5. Umgebungsvariable setzen
ENV PORT=5000

# 6. Port für den Container freigeben
EXPOSE 5000

# 7. Container starten
CMD ["node", "server.js"]

