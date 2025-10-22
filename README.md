# Anleitungen Verschiedner Themen
---
## Klonen des Repositories
### Innerhalb von Git
1. Finde in dem Projekt (oben rechts) einen Fork button.
2. Wenn man dort drauf drückt kann man kann man sich das Repostitory zu sich selber kopieren ohne es zu klauen, da der Name des ersteller auch noch dort steht.
3. Jetzt hast du das git repository gekloned.
### Ausserhalb von Git
1. Öffne cmd in deinem ausgewählten Ordner.
2. gib diesen command ein um es zu clonen

        git clone https://github.com/USERNAME/REPOSITORY.git

3. Am Ende kannst du noch in das neue Repo hineingehen, mit diesem command.

        cd REPOSITORY

---

## Installation der notwendigen Pakete
### Notwendig
- docker destop (Um Docker-Container erstellen zu können)
### Optional
- npm install (für Node.js Projekte)
- pip install -r requirements.txt (Für Phython Projekte)

---

## Docker-Konfiguration und -Installation
1. Wechsle in den Ordner und öffne cmd in ihm. (geht auch in einem IDE Terminal)
2. Starte mit dem Befehl docker init.
3. Dort popt eine Frage nach der anderen auf beantworte sie so:?

        What application platform does your project use? Node
        What version of Node do you want to use? 18.0.0
        Which package manager do you want to use? npm
        What command do you want to use to start the app: node src/index.js
        What port does your server listen on? 3000
4. Ab diesem Zeitpunkt kannst du die Applikation in einem Docker-Container laufen lassen.

---

## Starten der Applikation in einem Docker-Container
### Im Vordergrund
    docker compose up --build
### Im Hintergrund
    docker compose up --build -d
### Stopen der Applikation
    docker compose down
---

Quellen:
Oskar's Vorwissen
https://docs.docker.com/guides/nodejs/containerize/
