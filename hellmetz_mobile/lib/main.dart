import 'package:flutter/material.dart';
import 'screens/liste_concerts.dart';

/// Point d'entrée — FOURNI.
void main() => runApp(const HellMetzApp());

class HellMetzApp extends StatelessWidget {
const HellMetzApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'HellMetz',
debugShowCheckedModeBanner: false,

theme: ThemeData(
// Thème sombre
brightness: Brightness.dark,

// Couleur principale : doré
colorSchemeSeed: const Color(0xFFD4AF37),

// Material 3
useMaterial3: true,

// Fond général
scaffoldBackgroundColor: const Color(0xFF080808),

// Barre du haut
appBarTheme: const AppBarTheme(
backgroundColor: Color(0xFF080808),
foregroundColor: Colors.white,
elevation: 0,
centerTitle: true,
titleTextStyle: TextStyle(
color: Color(0xFFD4AF37),
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

// Texte
textTheme: const TextTheme(
bodyMedium: TextStyle(
color: Color(0xFFE5E5E5),
fontSize: 16,
),

bodyLarge: TextStyle(
color: Color(0xFFF5F5F5),
fontSize: 18,
),

titleLarge: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.bold,
),

titleMedium: TextStyle(
color: Color(0xFFD4AF37),
fontSize: 18,
fontWeight: FontWeight.bold,
),
),

// Cartes
cardTheme: CardThemeData(
color: const Color(0xFF171717),
elevation: 4,
shadowColor: Colors.black54,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
side: const BorderSide(
color: Color(0xFF3A3A3A),
width: 1,
),
),
),

// Boutons
elevatedButtonTheme: ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xFFD4AF37),
foregroundColor: Colors.black,
padding: const EdgeInsets.symmetric(
horizontal: 24,
vertical: 14,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
textStyle: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),
),

// Boutons avec icônes
iconButtonTheme: IconButtonThemeData(
style: IconButton.styleFrom(
foregroundColor: const Color(0xFFD4AF37),
),
),
),

home: const ListeConcertsScreen(),
);
}
}

