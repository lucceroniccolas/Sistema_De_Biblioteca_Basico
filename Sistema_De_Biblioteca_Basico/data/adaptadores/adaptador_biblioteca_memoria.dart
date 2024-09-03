import '../../dominio/entidades/libro.dart';
import '../../dominio/repositorios/repositorio_biblioteca.dart';


class AdaptadorBibliotecaMemoria implements RepositorioBiblioteca{
  List <Libro> libros= [];
  List <Usuario> usuarios=[] ;
  List <MovimientoDeBiblioteca> movimientos=[];

@override
  void agregarLibro(Libro nuevoLibro){
    libros.add(nuevoLibro);
  }
  @override
  List<Libro> todosLosLibros(){
    return libros;
  }
 @override
  void agregarUsuario(Usuario nuevoUsuario){
    usuarios.add(nuevoUsuario);
  }
  @override
  List<Usuario> todosLosUsuarios(){
    return usuarios;
  }  
  @override
  void agregarMovimiento(MovimientoDeBiblioteca nuevoMovimiento){
    movimientos.add(nuevoMovimiento);
  }
  @override
  List<Libro> todosLosLibrosNoDevueltos(){
    return movimientos.where((movimiento)=> !movimiento.esDevolucion).map((movimiento)=>movimiento.libro).toList();
  }
}