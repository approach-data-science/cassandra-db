from typing import Optional

from model.dto.UsuarioDTO import UsuarioDTO
from model.entity.Usuario import Usuario
from model.repository.UsuarioRepository import UsuarioRepository


class UsuarioService:
    def __init__(self):
        self.usuarioRepository = UsuarioRepository()

    def save(self, usuarioDto):
        # Convierte el DTO a una entidad
        usuario = self.toEntity(usuarioDto)
        
        # Guarda la entidad utilizando el repositorio
        usuarioGuardado = self.usuarioRepository.save(usuario)

        
        # Convierte la entidad guardada de nuevo a un DTO y lo devuelve
        return self.toDto(usuarioGuardado)

    def findById(self, usuarioDni: str):
        # Busca el usuario utilizando el repositorio
        usuarioEncontrado = self.usuarioRepository.findById(usuarioDni)
        
        if usuarioEncontrado:
            # Convierte la entidad encontrada a un DTO y lo devuelve
            return self.toDto(usuarioEncontrado)
        else:
            return None
    
    def findByCity(self, city: str):
        usuarios = self.usuarioRepository.findByCity(city)
        usuariosDtos = [self.toDto(entity) for entity in usuarios]
        return usuariosDtos

    def toEntity(self, usuarioDto: UsuarioDTO) -> Usuario:
        # Implementa la lógica para convertir un DTO a una entidad
        usuario = Usuario(
            dni=usuarioDto.dni,
            nombre=usuarioDto.nombre,
            calle=usuarioDto.calle,
            ciudad=usuarioDto.ciudad
        )
        return usuario

    def toDto(self, usuario: Usuario) -> UsuarioDTO:
        # Implementa la lógica para convertir una entidad a un DTO

        usuarioDto = UsuarioDTO(
            dni=usuario.dni,
            nombre=usuario.nombre,
            calle=usuario.calle,
            ciudad=usuario.ciudad
        )
        return usuarioDto
