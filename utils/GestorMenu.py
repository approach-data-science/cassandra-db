from datetime import date
import subprocess
import uuid
from model.dto.AutorDTO import AutorDTO
from model.dto.LibroDTO import LibroDTO
from model.dto.UsuarioDTO import UsuarioDTO
from model.entity.Ejemplar import Ejemplar
from model.entity.Prestamo import Prestamo
from service.AutorService import AutorService

from service.EjemplarService import EjemplarService
from service.EscritoPorService import EscritoPorService
from service.LibroService import LibroService
from service.PaisService import PaisService
from service.PrestamoService import PrestamoService
from service.UsuarioService import UsuarioService


class GestorMenu:
        

    @staticmethod
    def registrarUsuario():
        print("\nIngrese los datos del Usuario.")

        dni = input("Ingrese el DNI del usuario: ")
        nombre = input("Ingrese el nombre del usuario: ")
        calle = input("Ingrese la calle del usuario: ")
        ciudad = input("Ingrese la ciudad del usuario: ")
        
        usuario = UsuarioDTO(dni, nombre, calle, ciudad)
        usuarioService = UsuarioService()
        usuarioCreado = usuarioService.save(usuario)
        print(f"Usuario {usuarioCreado.nombre} registrado con éxito.")
    
    @staticmethod
    def registrarAutor():
        print("\nHa seleccionado la opción de registrar autores.")

        codigo = input("Ingrese el código del autor: ")
        nombre = input("Ingrese el nombre del autor: ")
        premios = input("Ingrese los premios del autor (separados por comas): ").split(',')


        paisService = PaisService()

        while True:
            pais = input("Ingrese el país del autor: ")
            codigoPais = paisService.findByName(pais)

            if codigoPais:
                break
            else:
                print("Pais no disponible, intentelo de nuevo.")

        autor = AutorDTO(codigo, nombre, premios, codigoPais.codigo)
        autorService = AutorService()
        autorService.save(autor)
        print(f"Autor {autor.nombre} registrado con éxito.")
    
    @staticmethod
    def registrarLibro():
        
        print("\nIngrese los datos para registrar el libro.")
        
        isbn = input("Ingrese el ISBN del libro: ")
        titulo = input("Ingrese el título del libro: ")
        annio = int(input("Ingrese el año de publicación del libro: "))
        temas = input("Ingrese los temas del libro (separados por comas): ").split(',')
        
        libroDto = LibroDTO(isbn, titulo, annio, temas)
        libroService = LibroService()
        libroCreado = libroService.save(libroDto)

        if libroCreado:
            print(f"Libro {libroCreado.titulo} registrado con éxito.")
        else:
            print("Error al registrar el libro.")

        return libroDto
    
    @staticmethod
    def registrarEjemplares():
        print("\nHa seleccionado la opción de registrar ejemplares.")

        # Pedir el título del libro
        tituloLibro = input("Ingrese el título del libro: ")

        # Buscar el libro por su título
        libroService = LibroService()
        libro = libroService.findByTitle(tituloLibro)

        if not libro:
            print("El libro no se encuentra registrado.")
            return

        # Pedir la cantidad de ejemplares a registrar
        cantidadEjemplares = int(input("Ingrese la cantidad de ejemplares a registrar: "))

        # Obtener la fecha actual para asignarla como fecha de registro de los ejemplares
        fechaRegistro = date.today()
        saveEjemplar = EjemplarService()
        numeroEjemplar: int = int(saveEjemplar.numeroEjemplar())
        
        # Crear y registrar los ejemplares
        for i in range(cantidadEjemplares):
            numeroEjemplar = numeroEjemplar + 1
            
            ejemplar = Ejemplar(numero=numeroEjemplar, isbn=libro.isbn, fecha=fechaRegistro, status="DISPONIBLE")
            
            saveEjemplar.save(ejemplar)
            

        # Imprimir mensaje de éxito
        print(f"Se han registrado {cantidadEjemplares} ejemplares del libro '{tituloLibro}' con éxito.")
        


    @staticmethod
    def registrarPrestamo():
        print("\nHa seleccionado la opción de registrar préstamo.")

        # Buscar el libro por título
        tituloLibro = input("Ingrese el título del libro: ")
        libroService = LibroService()
        libro = libroService.findByTitle(tituloLibro)

        if not libro:
            print(f"No se encontró ningún libro con el título '{tituloLibro}'.")
            return

        # Buscar ejemplares disponibles del libro por su ISBN
        ejemplarService = EjemplarService()
        ejemplaresDisponibles = ejemplarService.findByLibro(libro.isbn)

        if not ejemplaresDisponibles:
            print(f"No hay ejemplares disponibles para el libro '{tituloLibro}'.")
            return

        # Filtrar ejemplares disponibles
        ejemplaresDisponibles = [ejemplar for ejemplar in ejemplaresDisponibles if ejemplar.status == 'DISPONIBLE']

        # Mostrar ejemplares disponibles
        print("\nEjemplares disponibles:")
        for ejemplar in ejemplaresDisponibles:
            print(f"Número: {ejemplar.numero}, Estado: {ejemplar.status}")

        # Pedir al usuario que seleccione un ejemplar
        ejemplarNumero = int(input("Ingrese el número del ejemplar que desea prestar: "))

        # Buscar usuario por DNI
        dniUsuario = input("Ingrese el DNI del usuario que realizará el préstamo: ")
        usuarioService = UsuarioService()
        usuario = usuarioService.findById(dniUsuario)

        if not usuario:
            print(f"No se encontró ningún usuario con el DNI '{dniUsuario}'.")
            return
        hoy = date.today()
        # Crear entidad de préstamo
        prestamo = Prestamo(
            codigo=uuid.uuid4(),  
            dni=usuario.dni,
            nombre=usuario.nombre,
            numero=ejemplarNumero,
            isbn=libro.isbn,
            fecha=hoy  
        )

        # Guardar el préstamo
        prestamoService = PrestamoService()
        prestamoService.save(prestamo)

        ejemplarService.updateStatus(prestamo.numero, prestamo.isbn, "PRESTADO")

        print("Préstamo registrado con éxito.")


    @staticmethod
    def obtenerLibroPorTitulo():
        libroService = LibroService()
        titulo = input("Ingrese el título del libro: ")
        libro = libroService.findByTitle(titulo)

        if libro:
            print("Libro encontrado:")
            print("ISBN:", libro.isbn)
            print("Título:", libro.titulo)
            print("Año de publicación:", libro.annio)
            return libro
        else:
            print("No se encontró ningún libro con ese título.")
            return None

    @staticmethod
    def actualizarAnioPublicacion():
        libro = GestorMenu.obtenerLibroPorTitulo()
        if libro:
            newYear = input("Ingrese el nuevo año de publicación: ")
            confirmacion = input("¿Está seguro de que desea actualizar la información de fecha de publicación del libro? (Si/No): ")
            if confirmacion.lower() == "si":
                libroService = LibroService()
                libroService.updateYear(newYear, libro.annio, libro.isbn)
                libroActualizado = libroService.findByTitle(libro.titulo)
                print("Libro actualizado:")
                print("ISBN:", libroActualizado.isbn)
                print("Título:", libroActualizado.titulo)
                print("Año de publicación:", libroActualizado.annio)
                print("Registro exitoso del proceso.")
            else:
                print("Proceso cancelado.")


    @staticmethod
    def eliminarAutoresPorPremio():
        print("\nHa seleccionado la opción de eliminar autores por premio.")
        premio = input("Ingrese el nombre del premio: ")

        confirmacion = input(f"¿Está seguro de eliminar a los autores asociados al premio '{premio}'? (Si/No): ")

        if confirmacion.lower() == "si":
            autorService = AutorService()
            autorService.deleteAuthorByPrize(premio)
            print(f"Autores asociados al premio '{premio}' eliminados exitosamente.")
        else:
            print("Operación cancelada. Volviendo al menú principal.")


    @staticmethod
    def consultarLibrosPorAnnio():
        print("\nConsulta de libros por año de publicación.")
        annio = int(input("Ingrese el año de publicación del libro: "))
        
        libroService = LibroService()
        libros = libroService.findByYear(annio)
        
        if libros:
            print("\nLibros publicados en el año", annio, ":")
            for libro in libros:
                print("ISBN:", libro.isbn)
                print("Título:", libro.titulo)
                print("Año de Publicación:", libro.annio)
                print("Temas:", list(libro.temas))
                print()
        else:
            print("No se encontraron libros publicados en el año", annio)


    @staticmethod
    def buscarEjemplaresPorNombreLibro():
        print("\nBúsqueda de ejemplares por nombre de libro.")
        nombre_libro = input("Ingrese el nombre del libro: ")
        
        libroService = LibroService()
        libro = libroService.findByTitle(nombre_libro)
        
        if libro:

            ejemplarService = EjemplarService()
            ejemplares = ejemplarService.findByLibro(libro.isbn)
            
            if ejemplares:
                print("\nEjemplares del libro:")
                for ejemplar in ejemplares:
                    print("Número de Ejemplar:", ejemplar.numero)
                    print("ISBN:", ejemplar.isbn)
                    print("Fecha:", ejemplar.fecha)
                    print("Status:", ejemplar.status)
                    print()
            else:
                print("No se encontraron ejemplares para este libro.")
        else:
            print("No se encontró un libro con ese nombre.")

    @staticmethod
    def buscarLibrosPorAutor():
        print("\nBúsqueda de libros escritos por un autor.")
        nombre_autor = input("Ingrese el nombre del autor: ")
        
        autorService = AutorService()
        autor = autorService.findByName(nombre_autor)
        
        if autor:
            print(f"\nLibros escritos por {nombre_autor}:")
            
            escritoPorService = EscritoPorService()
            libros = escritoPorService.findByAutor(autor.codigo)
    
            if libros:
                for libro in libros:
                    print("ISBN:", libro.libroIsbn)
                    print("Título:", libro.libroTitulo)
                    print("Año de Publicación:", libro.libroAnnio)
                    print("Temas:", libro.libroTemas)
                    print()
            else:
                print("No se encontraron libros escritos por este autor.")
        else:
            print("No se encontró un autor con ese nombre.")            

    @staticmethod
    def obtenerPrestamosPorNombreLibro():
        print("\nObtención de usuarios que han tomado prestado un ejemplar de un libro.")
        tituloLibro = input("Ingrese el nombre del libro: ")

        libroService = LibroService()
        libro = libroService.findByTitle(tituloLibro)

        if libro:
            print(f"\nUsuarios que han tomado prestado el libro '{tituloLibro}':")

            prestamoService = PrestamoService()
            prestamos = prestamoService.findByLibro(libro.isbn)

            if prestamos:
                for prestamo in prestamos:
                    print("Código de Prestamo:", prestamo.codigo)
                    print("ISBN del Libro:", prestamo.isbn)
                    print("Fecha de Prestamo:", prestamo.fecha)
                    print("DNI del Usuario:", prestamo.dni)
                    print("Nombre del Usuario:", prestamo.nombre)
                    print("Número de Ejemplar:", prestamo.numero)
                    print()
            else:
                print("No hay usuarios que hayan tomado prestado este libro.")
        else:
            print("No se encontró un libro con ese nombre.")

    @staticmethod
    def buscarUsuariosPorCiudad():
        print("\nBúsqueda de usuarios por ciudad de registro.")
        nombreCiudad = input("Ingrese el nombre de la ciudad: ")

        usuarioService = UsuarioService()
        usuarios = usuarioService.findByCity(nombreCiudad)

        if usuarios:
            print("\nUsuarios registrados en la ciudad de", nombreCiudad + ":")

            for usuario in usuarios:
                print("DNI:", usuario.dni)
                print("Nombre:", usuario.nombre)
                print("Ciudad:", usuario.ciudad)
                print("Direccion:", usuario.calle)
                print()
        else:
            print("No se encontraron usuarios registrados en la ciudad de", nombreCiudad)
            

    @staticmethod
    def buscarLibrosPrestadosPorEjemplar():
        print("\nBúsqueda de libros prestados por número de ejemplar.")
        numeroEjemplar = input("Ingrese el número de ejemplar: ")

        prestamoService = PrestamoService()
        prestamos = prestamoService.findByEjemplar(numeroEjemplar)

        if prestamos:
            print("\nLibros prestados para el ejemplar número", numeroEjemplar + ":")

            for prestamo in prestamos:
                print("ISBN del libro:", prestamo.isbn)
                print("Fecha del prestamo:", prestamo.fecha)
                print("DNI del usuario:", prestamo.dni)
                print("Nombre del usuario:", prestamo.nombre)
                print()
        else:
            print("No se encontraron libros prestados para el ejemplar número", numeroEjemplar)

    @staticmethod
    def obtenerAutoresPorPremio():
        print("\nObtención de información de autores por premio específico.")
        premio = input("Ingrese el premio específico: ")


        autorService = AutorService()
        autores = autorService.findByPrize(premio)

        if autores:
            print(f"\nAutores que han ganado el premio '{premio}':")

            for autor in autores:
                print("Código del autor:", autor.codigoAutor)
                print("Nombre del autor:", autor.nombreAutor)
                print("País del autor:", autor.codigoPais, "-", autor.nombrePais)
                print()

        else:
            print(f"No se encontraron autores que hayan ganado el premio '{premio}'.")            


    @staticmethod
    def buscarPrestamosPorFechaUsuario():
        print("\nBúsqueda de ejemplares prestados por fecha de préstamo y usuario.")
        fechaPrestamo = input("Ingrese la fecha de préstamo (AAAA-MM-DD): ")
        usuarioDni = input("Ingrese el DNI del usuario: ")

        prestamoService = PrestamoService()
        prestamos = prestamoService.findByPorFechaUsuario(fechaPrestamo, usuarioDni)

        if prestamos:
            print(f"\nEjemplares prestados el {fechaPrestamo} al usuario con DNI {usuarioDni}:")
            for prestamo in prestamos:
                print("ISBN del libro:", prestamo.isbn)
                print("Fecha de préstamo:", prestamo.fecha)
                print("DNI del usuario:", prestamo.dni)
                print("Nombre del usuario:", prestamo.nombre)
                print("Número del ejemplar:", prestamo.numero)
                print()
        else:
            print(f"No se encontraron ejemplares prestados el {fechaPrestamo} al usuario con DNI {usuarioDni}.")      


    @staticmethod
    def cargarDatosCsv():
        # Ruta al archivo CSV
        archivo_csv = "D:/MiOneDrive/OneDrive/Documentos/TecnichalSkills/VIU/HerramientasBigData/Actividad2/calidadAire1.csv"
        keyspace = "activida1_jhonsolis"
        tabla = "aire"
        
        # Comando para ejecutar DataStax Bulk Loader
        
        comando = [
            'dsbulk',
            'load',
            '-url', archivo_csv,
            '-k', keyspace,
            '-t', tabla,
            '-query', 'INSERT INTO aire (estacion, titulo, latitud, longitud, fecha, periodo, so2, no, no2, co, pm10, o3, dd, vv, tmp, hr, prb, rs, ll, ben, tol, mxil, pm25) VALUES (:estacion, :titulo, :latitud, :longitud, :fecha, :periodo, :so2, :no, :no2, :co, :pm10, :o3, :dd, :vv, :tmp, :hr, :prb, :rs, :ll, :ben, :tol, :mxil, :pm25)'
            ]
        
        # Ejecutar el comando
        try:
            subprocess.run(comando, check=True)
            print("Carga de datos completada exitosamente.")
        except subprocess.CalledProcessError as e:
            print(f"Error al cargar datos: {e}")      