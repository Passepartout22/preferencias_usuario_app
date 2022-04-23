import 'package:flutter/material.dart';
import 'package:preferencias_app/src/pages/home_page.dart';
import 'package:preferencias_app/src/pages/setting_page.dart';
import 'package:preferencias_app/src/share_prefs/preferencias_usuario.dart';

void main() async {
  final prefs = new preferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new preferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimap,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
