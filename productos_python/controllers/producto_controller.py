from models.producto import Producto

def listar_productos():
    return Producto.listar()