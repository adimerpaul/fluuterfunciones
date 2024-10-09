class Persona {
  String? nombre;
  int? edad;
  Persona({this.nombre, this.edad});
  void saludar() {
    print('Hola Me llamo $nombre y tengo $edad años');
  }
}
