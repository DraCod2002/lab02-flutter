class MarvelHeroes {
  final String nombrePila;
  final String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});

  MarvelHeroes.fromNames(String nombrePila, String nombrePersonaje)
      : this.nombrePila = nombrePila,
        this.nombrePersonaje = nombrePersonaje;

  void presentarse() {
    print(
        'Hola mi nombre es ${nombrePila.toUpperCase()} pero me conocen como tu amigable vecino ${nombrePersonaje.toUpperCase()}');
  }
}

void main() {
  MarvelHeroes spiderman = MarvelHeroes(
    nombrePila: 'Pete Parker',
    nombrePersonaje: 'Spiderman',
  );
  spiderman.presentarse();

  MarvelHeroes ironman = MarvelHeroes.fromNames('Tony Stark', 'Ironman');
  ironman.presentarse();
}
