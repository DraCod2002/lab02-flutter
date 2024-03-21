class MarvelHeroes {
  final String nombrePila;
  final String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});

  void presentarse() {
    print( 'Hola mi nombre es ${nombrePila.toUpperCase()} pero me conocen como tu amigable vecino ${nombrePersonaje.toUpperCase()}');
  }
}

void main() {
  MarvelHeroes spiderman = MarvelHeroes(
    nombrePila: 'Peter Parker',
    nombrePersonaje: 'Spiderman',
  );
  spiderman.presentarse();
}
