import 'package:shared_preferences/shared_preferences.dart';

class preferenciasUsuario {
  static final preferenciasUsuario _instancia =
      new preferenciasUsuario.internal();
  factory preferenciasUsuario() {
    return _instancia;
  }

  preferenciasUsuario.internal();

  SharedPreferences? _prefs;
  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //Get y set de genero
  int get genero {
    return _prefs!.getInt('genero') ?? 1;
  }

  set genero(int? value) {
    _prefs?.setInt('genero', value!);
  }

//get y set de colorsecundario

  bool get colorSecundario {
    return _prefs!.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool? value) {
    _prefs?.setBool('colorSecundario', value!);
  }

//Get y set de nombre
  String get nombreUsuario {
    return _prefs!.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    _prefs?.setString('nombreUsuario', value);
  }

  //Get y set de la ultima pagina
  String get ultimap {
    return _prefs!.getString('ultimaPagina') ?? 'home';
  }

  set ultimap(String value) {
    _prefs?.setString('ultimaPagina', value);
  }
}
