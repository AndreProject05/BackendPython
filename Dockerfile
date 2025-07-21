# Usa un'immagine base leggera con Python 3.12
FROM python:3.12-slim

# Imposta la directory di lavoro all'interno del container
WORKDIR /app

# Copia tutti i file locali nella directory /app del container
COPY . .

# Installa Flask (oppure requirements.txt se disponibile)
RUN pip install --no-cache-dir flask

# Espone la porta usata da Flask
EXPOSE 5000

# Comando per eseguire l'app Flask
CMD ["python", "backend.py"]
