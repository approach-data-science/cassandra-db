from model.dto.LibroDTO import LibroDTO

from model.dto.LibroPorTituloDTO import LibroPorTituloDTO
from model.entity.Libro import Libro
from model.entity.LibroPorTitulo import LibroPorTitulo
from model.repository.LibroRepository import LibroRepository

class LibroService:
    def __init__(self):
        self.libroRepository = LibroRepository()

    def save(self, libroDto):
        libro = self.toEntity(libroDto)
        saved = self.libroRepository.save(libro)
        return self.toDto(saved)
    
    def updateYear(self, newYear, year, isbn):
        self.libroRepository.updateYearOfPublication(isbn,newYear,year)

    def findByYear(self, annio: int):
        libros = self.libroRepository.findByYear(annio)
        librosDtos = [self.toDto(entity) for entity in libros]
        return librosDtos
    
    def findByTitle(self, title: str):

        libroEncontrado = self.libroRepository.findByTitle(title)
        
        if libroEncontrado:
            # Convierte la entidad encontrada a un DTO y lo devuelve
            return self.toDto(libroEncontrado)
        else:
            return None
    
    def toEntity(self, libroDto: LibroDTO) -> Libro:
        # Implementa la lógica para convertir un DTO a una entidad
        libro = Libro(
            isbn=libroDto.isbn,
            titulo=libroDto.titulo,
            annio=libroDto.annio,
            temas=libroDto.temas
        )
        return libro

    def toDto(self, libro: Libro) -> LibroDTO:
        # Implementa la lógica para convertir una entidad a un DTO
        libroDto = LibroDTO(
            isbn=libro.isbn,
            titulo=libro.titulo,
            annio=libro.annio,
            temas=libro.temas
        )
        return libroDto
    
    def toDtoPorTitulo(self, libro: LibroPorTitulo) -> LibroPorTituloDTO:
        # Implementa la lógica para convertir una entidad a un DTO
        libroDto = LibroPorTituloDTO(
            isbn=libro.isbn,
            titulo=libro.titulo,
            annio=libro.annio,
            temas=libro.temas,
            ejemplarNumero = libro.ejemplarNumero,
            ejemplarStatus=libro.ejemplarStatus,
            usuarioDni=libro.usuarioDni,
            usuarioNombre=libro.usuarioNombre,
            prestamoFecha=libro.prestamoFecha
        )
        return libroDto
    
 