import 'package:flutter/material.dart';

class ClubsList extends StatelessWidget {
  const ClubsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with your actual list of clubs
    final List<String> clubs = ["Club 1", "Club 2", "Club 3"];

    return Column(
      children: clubs.map((club) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Text(
              club,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'Description of $club',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle club tap
            },
          ),
        );
      }).toList(),
    );
  }
}