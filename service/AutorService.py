from model.dto.AutorDTO import AutorDTO
from model.dto.AutorPremioDTO import AutorPremioDTO
from model.entity.Autor import Autor
from model.entity.AutorPremio import AutorPremio
from model.repository.AutorRepository import AutorRepository



class AutorService:
    def __init__(self):
        self.autorRepository = AutorRepository()
    



    def save(self, autorDto) -> AutorDTO:
        autor = self.toEntity(autorDto)
        saved = self.autorRepository.save(autor)
        return self.toDTO(saved)


    def findByName(self, nombre: str):
        autor = self.autorRepository.findByName(nombre)
        if autor:
            print("Autor: ", autor.codigo)
            return autor #self.toDTO(autor)
        else:    
            return None
    

    def findByPrize(self, premio: str):
        autoresPorPremio = self.autorRepository.findByPrize(premio)
        return autoresPorPremio
    

    def deleteAuthorByPrize(self, prize):
        autores = self.autorRepository.findByPrize(prize)

        self.autorRepository.deleteAuthorsByPremio(prize)


        for autor in autores:
            self.autorRepository.deleteAuthorByCode(autor.codigoAutor)

    





    def toEntity(self, autorDto: AutorDTO) -> Autor:

        premios = set(autorDto.premios)
        
        autor = Autor(
            codigo=autorDto.codigo,
            nombre=autorDto.nombre,
            premios=premios,
            pais=autorDto.pais
        )

        return autor
    

    def toDTO(self, autor: Autor) -> AutorDTO:
        autorDto = AutorDTO(
            codigo=autor.codigo,
            nombre=autor.nombre,
            premios=autor.premios,
            pais=autor.pais
        )

        return autorDto
    
    def toDtoPrize(self, autor: AutorPremio) ->AutorPremioDTO:

        autorPremio = AutorPremioDTO(
            codigoAutor=autor.codigoAutor,
            nombreAutor=autor.nombreAutor,
            premio=autor.premio,
            codigoPais=autor.codigoPais,
            nombrePais=autor.nombrePais
        )

        return autorPremio