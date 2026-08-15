from conexion import conectar

class Producto:

    @staticmethod
    def listar():
        conexion = conectar()
        cursor = conexion.cursor()

        cursor.execute("SELECT p.id, c.nombre_cat AS categoria, p.nombre, p.marca, p.precio, "
            + "p.stock FROM productos p INNER JOIN categorias c ON p.categoria = c.id_cat "
            + "ORDER BY p.id ASC;")
        datos = cursor.fetchall()

        conexion.close()
        return datos