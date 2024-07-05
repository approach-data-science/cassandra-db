from model.entity.Libro import Libro
from model.entity.LibroPorTitulo import LibroPorTitulo
from model.repository.CassandraDB import CassandraDB


class LibroRepository:
    def __init__(self):
        self.db = CassandraDB()
    
    def save(self, libro):
        query = """
            INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
            VALUES (%s, %s, %s, %s)
        """

        libroPorTemas = set(libro.temas)

        self.db.session.execute(query, (libro.isbn, libro.titulo, libro.annio, libroPorTemas))


        query = """
                INSERT INTO Tabla1_Libro_Por_Annio(Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
                VALUES(%s, %s, %s, %s)
                """
        
        self.db.session.execute(query, (libro.isbn, libro.titulo, libro.annio, libroPorTemas))

        return self.findById(libro.isbn)

    def updateYearOfPublication(self, isbn, newYear, year):
        # Actualizar en la tabla Libro
        query = """
            UPDATE Libro
            SET libro_annio = %s
            WHERE libro_isbn = %s;
        """
        self.db.session.execute(query, (int(newYear), isbn))

        libro = self.findById(isbn)

        # Eliminar la entrada existente en Tabla1_Libro_Por_Annio
        delete_query = """
            DELETE FROM Tabla1_Libro_Por_Annio
            WHERE libro_isbn = %s AND libro_annio = %s;
        """
        self.db.session.execute(delete_query, (isbn,int(year)))

        # Insertar una nueva fila en Tabla1_Libro_Por_Annio con el nuevo año
        insert_query = """
            INSERT INTO Tabla1_Libro_Por_Annio (libro_annio, libro_isbn, libro_temas, libro_titulo)
            VALUES (%s, %s, %s, %s);
        """
        self.db.session.execute(insert_query, (int(newYear), isbn, libro.temas, libro.titulo))

    
    def findById(self, isbn):
        query = "SELECT * FROM Libro WHERE Libro_ISBN = %s"
        result = self.db.session.execute(query, (isbn,))
        row = result.one()
        if row:
            return Libro(row.libro_isbn, row.libro_titulo, row.libro_annio, row.libro_temas)
        return None
    
    def findByYear(self, year: int):
        query = "SELECT * FROM Tabla1_Libro_Por_Annio WHERE Libro_Annio = %s"
        result = self.db.session.execute(query, (year,))
        
        if result is not None:
            libros = []
            for row in result:
                libro = Libro(row[1], row[3], row[0], row[2])
                libros.append(libro)
            return libros
        else:
            return []
    
    def findByTitle(self, title: str):
        query = "SELECT * FROM Libro_Por_Titulo WHERE Libro_Titulo = %s"
        result = self.db.session.execute(query, (title,))
        
        row = result.one()

        if row:
            return LibroPorTitulo(row.libro_isbn, row.libro_titulo, row.libro_annio, row.libro_temas, 
                                  row.ejemplarNumero, row.ejemplarStatus, row.usuarioDni, 
                                  row.usuarioNombre, row.prestamoFecha)
        return None