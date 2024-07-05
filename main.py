

from utils.GestorMenu import GestorMenu

def menuPrincipal():
    print("=== Menú de opciones ===")
    print("1. Registrar Libros")
    print("2. Registrar Autores")
    print("3. Registrar Usuarios")
    print("4. Registrar Ejemplares")
    print("5. Registrar Prestamos")
    print("6. Actualizar Año Publicacion")
    print("7. Eliminar Autores por Premio")
    print("8. Consultas")
    print("9. ....")
    print("0. Salir")
    

def mostrarSubmenu():
    print("\n--- Submenú ---")
    print("1. Consultar libros por año")
    print("2. Consultar ejemplares por nombre del libro")
    print("3. Consultar libros por nombre del autor")
    print("4. Consultar usuarios que han prestado un libro")
    print("5. Consultar usuarios por ciudad")
    print("6. Consultar prestamos por numero de ejemplar")
    print("7. Consultar autores por premio ganado")
    print("8. Consultar ejemplares prestados por fecha y dni")
    print("9. Volver al menú principal")

def main():
    while True:
        menuPrincipal()
        opcion = input("Ingrese el número de la opción que desea realizar: ")

        if opcion == "1":
            print("\nHa seleccionado la opción de registrar libros.")
            # Lógica para registrar 
            GestorMenu.registrarLibro()
        elif opcion == "2":
            print("\nHa seleccionado la opción de registrar autores.")
            # Lógica para registrar autores
            GestorMenu.registrarAutor()
        elif opcion == "3":
            print("\nHa seleccionado la opción de registrar usuarios.")
            # Lógica para registrar usuarios
            GestorMenu.registrarUsuario()
        elif opcion == "4":
            print("\nHa seleccionado la opción de registrar ejemplares.")
            # Lógica para registrar ejemplares
            GestorMenu.registrarEjemplares()
        elif opcion == "5":
            print("\nHa seleccionado la opción de registrar préstamos.")
            # Lógica para registrar préstamos
            GestorMenu.registrarPrestamo()
        elif opcion == "6":
            print("\nHa seleccionado la opción de actualizar año de publicación.")
            # Lógica para actualizar año de publicación
            GestorMenu.actualizarAnioPublicacion()
        elif opcion == "7":
            print("\nHa seleccionado la opción de eliminar autores por premio.")
            # Lógica para eliminar autores por premio
            GestorMenu.eliminarAutoresPorPremio()
        elif opcion == "8":
            while True:
                mostrarSubmenu()
                opcion_submenu = input("Ingrese el número de la consulta que desea realizar: ")
                
                if opcion_submenu == "1":
                    print("\nHa seleccionado la Consulta 1.")
                    # Lógica para la Consulta 1
                    GestorMenu.consultarLibrosPorAnnio()
                elif opcion_submenu == "2":
                    print("\nHa seleccionado la Consulta 2.")
                    # Lógica para la Consulta 2
                    GestorMenu.buscarEjemplaresPorNombreLibro()
                elif opcion_submenu == "3":
                    print("\nHa seleccionado la Consulta 3.")
                    GestorMenu.buscarLibrosPorAutor()
                    # Lógica para la Consulta 3
                elif opcion_submenu == "4":
                    print("\nHa seleccionado la Consulta 4.")
                    # Lógica para la Consulta 4
                    GestorMenu.obtenerPrestamosPorNombreLibro()
                elif opcion_submenu == "5":
                    print("\nHa seleccionado la Consulta 5.")
                    # Lógica para la Consulta 5
                    GestorMenu.buscarUsuariosPorCiudad()
                elif opcion_submenu == "6":
                    print("\nHa seleccionado la Consulta 6.")
                    GestorMenu.buscarLibrosPrestadosPorEjemplar()
                    # Lógica para la Consulta 6
                elif opcion_submenu == "7":
                    print("\nHa seleccionado la Consulta 7.")
                    # Lógica para la Consulta 7
                    GestorMenu.obtenerAutoresPorPremio()
                elif opcion_submenu == "8":
                    print("\nHa seleccionado la Consulta 8.")
                    # Lógica para la Consulta 8
                    GestorMenu.buscarPrestamosPorFechaUsuario()
                elif opcion_submenu == "9":
                    print("\nVolviendo al menú principal...")
                    break
                else:
                    print("\nOpción no válida. Por favor, seleccione una opción válida.")
        elif opcion == "9":
            print("\n....")
        elif opcion == "0":
            print("\nSaliendo del programa...")
            break
        else:
            print("\nOpción no válida. Por favor, seleccione una opción válida.")





 

  

if __name__ == "__main__":
    main()
