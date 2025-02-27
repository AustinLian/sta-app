import 'package:flutter/material.dart';

class AvailableClubsList extends StatelessWidget {
  const AvailableClubsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with your actual list of available clubs
    final List<String> availableClubs = ["Club A", "Club B", "Club C"];

    return Column(
      children: availableClubs.map((club) {
        return ListTile(
          title: Text(club),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle join club action
            },
            child: const Text('Join'),
          ),
        );
      }).toList(),
    );
  }
}