import '../entidades/libro.dart';

abstract class RepositorioBiblioteca{
  agregarLibro(Libro nuevoLibro);
  agregarUsuario(Usuario nuevoUsuario);
  List<Libro> todosLosLibros();
  List<Usuario>todosLosUsuarios();
  agregarMovimiento(MovimientoDeBiblioteca nuevoMovimiento);
  List<Libro>todosLosLibrosNoDevueltos();
}
