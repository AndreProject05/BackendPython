from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def get_hostname():
    hostname = socket.gethostname()
    return f"Nome host della macchina: {hostname}"

if __name__ == '__main__':
    # Avvia il server sulla porta 80 su tutte le interfacce
    app.run(host='0.0.0.0', port=5000)
