
import uuid
from model.dto.PrestamoDTO import PrestamoDTO
from model.entity.Prestamo import Prestamo
from model.repository.CassandraDB import CassandraDB


class PrestamoRepository:
    def __init__(self):
        self.db = CassandraDB()
    


    def findByLibro(self, libroIsbn):
        query = "SELECT * FROM Tabla4_Prestamo WHERE libro_isbn = %s"
        result = self.db.session.execute(query, (libroIsbn,))
        
        if result is not None:
            prestamos = []
            for row in result:
                prestamo = Prestamo(row[3], row[2], row[5], row[1], row[0], row[4])
                prestamos.append(prestamo)
            return prestamos
        else:
            return []
    
    def findByFechaUsuario(self, fecha, usuario):
        query = "SELECT * FROM Tabla8_Prestamo_Por_Fecha_Usuario WHERE prestamo_fecha = %s AND usuario_dni = %s"
        result = self.db.session.execute(query, (fecha,usuario))
        
        if result is not None:
            prestamos = []
            for row in result:
                prestamo = PrestamoDTO(row[1], row[4], row[3], row[2], row[0])
                prestamos.append(prestamo)
            return prestamos
        else:
            return []
    

    def findByEjemplar(self, ejemplar):
        query = "SELECT * FROM Tabla6_Prestamo_Por_Ejemplar WHERE ejemplar_numero = %s"
        result = self.db.session.execute(query, (ejemplar,))
        
        if result is not None:
            prestamos = []
            for row in result:
                prestamo = PrestamoDTO(row[2], row[4], row[0], row[1], row[3])
                prestamos.append(prestamo)
            return prestamos
        else:
            return []

    
    def save(self, prestamo):

        query = """
                INSERT INTO Tabla4_Prestamo(Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha)
                VALUES(%s, %s, %s, %s, %s, %s)
                """
        prestamoCodigo = uuid.uuid4()
        self.db.session.execute(query, (prestamoCodigo, prestamo.dni, prestamo.nombre, prestamo.numero, prestamo.isbn, prestamo.fecha))
        
        query = """
                INSERT INTO Tabla6_Prestamo_Por_Ejemplar(Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha)
                VALUES(%s, %s, %s, %s, %s)
                """
        self.db.session.execute(query, (prestamo.dni, prestamo.nombre, prestamo.numero, prestamo.isbn, prestamo.fecha))

        query = """
                INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario(Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha)
                VALUES(%s, %s, %s, %s, %s)
                """
        self.db.session.execute(query, (prestamo.dni, prestamo.nombre, prestamo.numero, prestamo.isbn, prestamo.fecha))
        
       