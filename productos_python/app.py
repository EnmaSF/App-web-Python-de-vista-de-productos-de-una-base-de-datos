from flask import Flask, render_template
from controllers.producto_controller import listar_productos

app = Flask(__name__)

@app.route('/')
def listado():
    productos = listar_productos()
    return render_template('listado.html', productos=productos)

if __name__ == '__main__':
    app.run(debug=True)