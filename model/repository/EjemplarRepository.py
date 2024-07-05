from model.dto.EjemplarDTO import EjemplarDTO
from model.entity.Ejemplar import Ejemplar
from model.repository.CassandraDB import CassandraDB


class EjemplarRepository:
    def __init__(self):
        self.db = CassandraDB()


    def numeroEjemplar(self):

        # Obtener el último número de ejemplar
        last_number_query = "SELECT MAX(ejemplar_numero) AS numero FROM Tabla2_Libro_Por_Ejemplar"
        last_number_result = self.db.session.execute(last_number_query)
        last_number_row = last_number_result.one()

        if last_number_row:
            last_number = last_number_row.numero
            new_number = last_number
        else:
            new_number = 1

        return new_number

    
    def save(self, ejemplar):

        
        query = """
                INSERT INTO Ejemplar(ejemplar_numero, libro_isbn, ejemplar_fecha, ejemplar_status)
                VALUES(%s, %s, %s, %s)
                """
    

        self.db.session.execute(query, (ejemplar.numero, ejemplar.isbn, ejemplar.fecha, ejemplar.status))
    
        queryEjemplar = """
                INSERT INTO Tabla2_Libro_Por_Ejemplar(ejemplar_numero, libro_isbn, ejemplar_fecha, ejemplar_status)
                VALUES(%s, %s, %s, %s)
                """
    

        self.db.session.execute(queryEjemplar, (ejemplar.numero, ejemplar.isbn, ejemplar.fecha, ejemplar.status))
    


        return self.findById(ejemplar.numero)
    

    def updateStatus(self, numeroEjemplar, isbn, estado):
        query = """
            UPDATE Tabla2_Libro_Por_Ejemplar 
            SET ejemplar_status = %s 
            WHERE libro_isbn = %s AND ejemplar_numero = %s;
        """
        self.db.session.execute(query, (estado, isbn, numeroEjemplar))

        queryEjemplar = """
            UPDATE Ejemplar 
            SET ejemplar_status = %s 
            WHERE libro_isbn = %s AND ejemplar_numero = %s;
        """
        self.db.session.execute(queryEjemplar, (estado, isbn, numeroEjemplar))


    def findById(self, ejemplar):
        query = "SELECT * FROM Ejemplar WHERE ejemplar_numero = %s"
        result = self.db.session.execute(query, (ejemplar,))
        row = result.one()

        

        if row:
            return Ejemplar(row.ejemplar_numero, row.libro_isbn, row.ejemplar_fecha, row.ejemplar_status)
        return None
    
    def findByLibro(self, libro):
        query = "SELECT * FROM Tabla2_Libro_Por_Ejemplar WHERE Libro_ISBN = %s"
        result = self.db.session.execute(query, (libro,))
        
        if result is not None:
            ejemplares = []
            for row in result:
                ejemplar = EjemplarDTO(row[1], row[0], row[2], row[3])
                ejemplares.append(ejemplar)
            return ejemplares
        else:
            return []