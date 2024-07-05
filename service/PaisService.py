from model.repository.PaisRepository import PaisRepository


class PaisService:
    def __init__(self):
        self.paisRepository = PaisRepository()

    
    def save(self, pais):
        self.paisRepository.save(pais)

    def findByName(self, name):
        return self.paisRepository.findByName(name)