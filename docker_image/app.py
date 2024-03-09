from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Welcome to Agustin's test!"

if __name__ == '__main__':
    port = 5000 # any port you wish, just be consistent with the dockerfile and main.tf
    app.run(host='0.0.0.0', port=port, debug=True)