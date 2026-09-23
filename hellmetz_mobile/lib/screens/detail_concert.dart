import 'package:flutter/material.dart';
import '../models/concert.dart';

/// Écran de détail — À COMPLÉTER (étape 7).
///
/// Cet écran reçoit un [Concert] par son constructeur.
/// Complétez le `body` pour afficher le titre, l'artiste, la date et le lieu.
class DetailConcertScreen extends StatelessWidget {
  final Concert concert;

  const DetailConcertScreen({super.key, required this.concert});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(concert.titre)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              concert.titre,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('Artiste : ${concert.artiste}'),
            Text('Date : ${concert.date}'),
            Text('Lieu : ${concert.lieu}'),
            Image.asset(concert.image),
          ],
        ),
      ),
    );
  }
}