import 'package:flutter/material.dart';
import '../models/concert.dart';

class CarteConcert extends StatelessWidget {
  final Concert concert;
  final VoidCallback? onTap;

  const CarteConcert({super.key, required this.concert, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              concert.titre,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(concert.artiste),
            Text(concert.date),

          ],
        ),
      ),
    );
  }
}