from model.entity.Pais import Pais
from model.repository.CassandraDB import CassandraDB


class PaisRepository:
    def __init__(self):
        self.db = CassandraDB()
    

    def save(self, pais):
        query = """
            INSERT INTO Pais (Pais_COD, Pais_Nombre)
            VALUES (%s, %s)
        """

        self.db.session.execute(query, (pais.codigo, pais.nombre))

        
        return self.findById(pais.codigo)

    
    def findById(self, codigo):
        query = "SELECT * FROM Pais WHERE pais_cod = %s"
        result = self.db.session.execute(query, (codigo,))
        row = result.one()
        
        if row:
            return Pais(row.pais_cod, row.pais_nombre)
        return None
    

    def findByName(self, name):
        query = "SELECT * FROM Pais WHERE Pais_Nombre = %s"
        result = self.db.session.execute(query, (name,))
        row = result.one()
        
        if row:
            return Pais(row.pais_cod, row.pais_nombre)
        return None