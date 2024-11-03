import 'package:astro_app_assesment/models/astrologer_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AstrologerCard extends StatelessWidget {
  final Astrologer astrologer;

  const AstrologerCard({required this.astrologer});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(astrologer.imagePath),
          radius: 30,
        ),
        title: Text(
          astrologer.name,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              astrologer.specialization,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                RatingBarIndicator(
                  rating: astrologer.rating,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
                const SizedBox(width: 8),
                Text('${astrologer.rating}'),
              ],
            ),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // Navigate to chat screen or start chat
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
          ),
          child: const Text('Chat'),
        ),
      ),
    );
  }
}
