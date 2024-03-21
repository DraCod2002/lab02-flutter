class DCHeroes {
  final String nombrePila;
  final String nombrePersonaje;

  DCHeroes.fromDCJson(Map<String, String> DCJson)
      : nombrePila = DCJson['nombrePila'] ?? 'No tiene nombre',
        nombrePersonaje = DCJson['nombrePersonaje'] ?? 'No tiene alias' {
    if (nombrePila == 'No tiene nombre' || nombrePersonaje == 'No tiene alias') {
      print('Alguno de los datos en el mapa no está completo.');
    }
  }

  void presentarse() {
    print(
        'Hola mi nombre es ${nombrePila.toUpperCase()} pero me conocen como el caballero de la noche ${nombrePersonaje.toUpperCase()}');
  }
}

void main() {
  Map<String, String> DCJson = {
    'nombrePila': 'Bruce Wayne',
    'nombrePersonaje': 'Batman',
  };

  DCHeroes batman = DCHeroes.fromDCJson(DCJson);
  batman.presentarse();
}
