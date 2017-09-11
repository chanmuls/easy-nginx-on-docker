from flask import Flask, render_template, abort

app = Flask(__name__)


@app.route('/')
def visualize_ml():
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0")
