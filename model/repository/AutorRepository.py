

from model.entity.Autor import Autor
from model.entity.AutorPremio import AutorPremio
from model.repository.CassandraDB import CassandraDB
from model.repository.PaisRepository import PaisRepository


class AutorRepository:
    def __init__(self):
        self.db = CassandraDB()

    

    def save(self, autor):

        premiosPorAutor = set(autor.premios)

        pais = PaisRepository()
        paisEncontrado = pais.findById(autor.pais)

        for premio in premiosPorAutor: 
            query = """
                    INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre)
                    VALUES(%s, %s, %s, %s, %s)
                    """
            
            self.db.session.execute(query, (autor.codigo, autor.nombre, premio, paisEncontrado.codigo, paisEncontrado.nombre))




        query = """
            INSERT INTO Tabla3_Autor (autor_cod, autor_nombre, pais_cod, autor_premios)
            VALUES (%s, %s, %s, %s)
        """

        


        self.db.session.execute(query, (autor.codigo, autor.nombre, autor.pais, autor.premios))
        


        return self.findById(autor.codigo)
    
    def deleteAuthorByCode(self, code):
            # Eliminar los autores de la tabla Tabla3_Autor
            query_delete_autores = """
                DELETE FROM Tabla3_Autor
                WHERE autor_cod = %s
            """
            self.db.session.execute(query_delete_autores, (code,))

    def deleteAuthorsByPremio(self, premio):
            # Eliminar las referencias de la tabla Tabla7_Autor_Premios
            query_delete_premios = """
                DELETE FROM Tabla7_Autor_Premios
                WHERE premio = %s
            """
            self.db.session.execute(query_delete_premios, (premio,))



    
    def findById(self, codigo):
        query = "SELECT * FROM Tabla3_Autor WHERE Autor_COD = %s"
        result = self.db.session.execute(query, (codigo,))
        row = result.one()

        

        if row:
            return Autor(row.autor_cod, row.autor_nombre, row.autor_premios, row.pais_cod)
        return None
    
    def findByName(self, nombre):
        query = "SELECT * FROM Autor_Por_Nombre WHERE Autor_Nombre = %s"
        result = self.db.session.execute(query, (nombre,))
        row = result.one()
        
        if row:
            return Autor(row.autor_cod, row.autor_nombre, row.autor_premios, row.pais_cod)
        return None
    

    def findByPrize(self, premio: str):
        query = "SELECT * FROM Tabla7_Autor_Premios WHERE Premio = %s"
        result = self.db.session.execute(query, (premio,))

        if result is not None:
            autores = []
            for row in result:
                autor = AutorPremio(row[1], row[2], row[0], row[3], row[4])
                #autor = AutorPremio(row['codigo_autor'], row['nombre_autor'], row['premio'], row['codigo_pais'], row['nombre_pais'])
                autores.append(autor)
                return autores
        else:
            return []
    