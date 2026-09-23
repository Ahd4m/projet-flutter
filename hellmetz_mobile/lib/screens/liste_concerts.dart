import 'package:flutter/material.dart';
import '../data/concerts.dart';
import '../widgets/carte_concert.dart';
import 'detail_concert.dart';

/// Liste des concerts — structure du ListView.builder FOURNIE (étape 5).
/// À compléter : la navigation au clic (étape 7).
class ListeConcertsScreen extends StatelessWidget {
  const ListeConcertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HellMetz Mobile')),
      body: ListView.builder(
        itemCount: concerts.length,
        itemBuilder: (context, index) {
          final concert = concerts[index];
          return CarteConcert(
            concert: concert,
            // au clic, on navigue vers DetailConcertScreen
            // en lui transmettant `concert`.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailConcertScreen(concert: concert),
                ),
              );
            },
          );
        },
      ),
    );
  }
}