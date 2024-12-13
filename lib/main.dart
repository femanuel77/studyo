import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/inicial.dart';
import 'screens/materias.dart';
import 'screens/sobre.dart';


final theme = ThemeData (
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
    )
  ),
  textTheme: GoogleFonts.notoSansTextTheme(),
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.greenAccent)
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Stud.yo',
      home: PaginaInicial(),
      routes: {
        '/materias': (context) => Lista(),
        '/sobre': (context) => InfoScreen(),
        '/inicial': (context) => PaginaInicial(),
      },
    );
  }
}