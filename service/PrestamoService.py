from model.repository.PrestamoRepository import PrestamoRepository


class PrestamoService:
    def __init__(self):
        self.prestamoRepository = PrestamoRepository()

    
    def save(self, prestamo):
        self.prestamoRepository.save(prestamo)

    def findByPorFechaUsuario(self, fecha, usuario):
        prestamos = self.prestamoRepository.findByFechaUsuario(fecha, usuario)
        return prestamos
    
    def findByEjemplar(self, ejemplar):
        prestamos = self.prestamoRepository.findByEjemplar(int(ejemplar))
        return prestamos
    
    def findByLibro(self, isbn):
        prestamos = self.prestamoRepository.findByLibro(isbn)
        return prestamos