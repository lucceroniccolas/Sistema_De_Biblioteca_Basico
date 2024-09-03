import '../entidades/libro.dart';
import '../repositorios/repositorio_biblioteca.dart';

class AdministracionDeBiblioteca{
  final RepositorioBiblioteca repositorio;
  AdministracionDeBiblioteca(this.repositorio);

  void registrarEntrega(DateTime fecha, Libro libro, Usuario usuario){
    MovimientoDeBiblioteca movimiento= MovimientoDeBiblioteca(fecha: fecha, usuario: usuario, libro: libro, esDevolucion: false,);
    repositorio.agregarMovimiento(movimiento);
  }
  void registrarDevolucion(DateTime fecha, Libro libro,Usuario usuario, bool esDevolucion ){
    MovimientoDeBiblioteca movimiento=MovimientoDeBiblioteca(fecha: fecha, usuario: usuario, libro: libro, esDevolucion: true,);
    repositorio.agregarMovimiento(movimiento);
  
  }
}
