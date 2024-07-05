from model.entity.EscritoPor import EscritoPor
from model.repository.CassandraDB import CassandraDB


class EscritoPorRepository:
    def __init__(self):
        self.db = CassandraDB()

    


    def save(self, escritoPor: EscritoPor):
        query = """
                INSERT INTO Tabla3_Escrito_Por(Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
                VALUES(%s, %s, %s, %s, %s)
        """

        temasPorLibro = set(escritoPor.libroTemas)

        self.db.session.execute(query, (escritoPor.codigoAutor, escritoPor.libroIsbn, escritoPor.libroTitulo, escritoPor.libroAnnio, temasPorLibro))
        
        return self.findById(escritoPor.codigoAutor)

    def findById(self, codigoAutor):

        query = """
                SELECT * FROM Tabla3_Escrito_Por WHERE autor_cod = %s
        """

        result = self.db.session.execute(query, (codigoAutor,))

        if result is not None:
            escritos = []
            for row in result:

                escritoPor = EscritoPor(row[0], row[1], row[4], row[2], row[3])
                escritos.append(escritoPor)
            return escritos
        else:
            return []
        


        