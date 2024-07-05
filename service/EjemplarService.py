
from model.repository.EjemplarRepository import EjemplarRepository


class EjemplarService:
    def __init__(self):
        self.ejemplarRepository = EjemplarRepository()
    

    def save(self, ejemplarSave):
        ejemplarSaved = self.ejemplarRepository.save(ejemplarSave)
        return ejemplarSaved
    
    def updateStatus(self, numero, isbn, status):
        self.ejemplarRepository.updateStatus(numero, isbn, status)

    def findById(self, ejemplar):
        return self.ejemplarRepository.findById(ejemplar)
    
    def findByLibro(self, libro):
        return self.ejemplarRepository.findByLibro(libro)
    
    def numeroEjemplar(self):
        return self.ejemplarRepository.numeroEjemplar()
    