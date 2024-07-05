from model.repository.EscritoPorRepository import EscritoPorRepository


class EscritoPorService:
    def __init__(self):
        self.escritoPorRepository = EscritoPorRepository()


    
    def save(self, escritoPor):
        return self.escritoPorRepository.save(escritoPor)
    
    def findByAutor(self, codigoAutor):
        return self.escritoPorRepository.findById(codigoAutor)