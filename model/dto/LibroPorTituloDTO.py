class LibroPorTituloDTO:
    def __init__(self, isbn, titulo, annio, temas, ejemplarNumero, ejemplarStatus,
                 usuarioDni, usuarioNombre, prestamoFecha):
        self.isbn = isbn
        self.titulo = titulo
        self.annio = annio
        self.temas = temas
        self.ejemplarNumero = ejemplarNumero
        self.ejemplarStatus = ejemplarStatus
        self.usuarioDni = usuarioDni
        self.usuarioNombre = usuarioNombre
        self.prestamoFecha = prestamoFecha