from model.entity.Usuario import Usuario
from model.repository.CassandraDB import CassandraDB



class UsuarioRepository:
    def __init__(self):
        self.db = CassandraDB()
    
    def save(self, usuario):
        query = """
            INSERT INTO Tabla5_Usuario (Usuario_DNI, Usuario_Nombre, Usuario_Calle, Usuario_Ciudad)
            VALUES (%s, %s, %s, %s)
        """
        self.db.session.execute(query, (usuario.dni, usuario.nombre, usuario.calle, usuario.ciudad))
        
        return self.findById(usuario.dni)
    
    def findById(self, dni):
        query = "SELECT * FROM Tabla5_Usuario WHERE Usuario_DNI = %s"
        result = self.db.session.execute(query, (dni,))
        row = result.one()
        
        if row:
            return Usuario(row.usuario_dni, row.usuario_nombre, row.usuario_calle, row.usuario_ciudad)
        return None
    
    def findByCity(self, city: str):
        query = "SELECT * FROM Tabla5_Usuario WHERE Usuario_Ciudad = %s"
        result = self.db.session.execute(query, (city,))

        if result is not None:
            usuarios = []
            for row in result:
                usuario = Usuario(row[0], row[3], row[1], row[2])
                usuarios.append(usuario)
            return usuarios
        else:
            return []