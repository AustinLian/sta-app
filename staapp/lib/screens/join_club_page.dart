import 'package:flutter/material.dart';
import 'package:staapp/widgets/extras/header.dart';
import 'package:staapp/widgets/socials/available_clubs_list.dart'; // Correct import
import 'package:staapp/theme/styles.dart';

class JoinClubPage extends StatelessWidget {
  const JoinClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join a Club"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(name: "Join a Club"),
              Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: Styles.normalBoxShadow,
                  borderRadius: Styles.primaryBorderRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Clubs',
                      style: theme.textTheme.displayLarge?.copyWith(
                        color: Styles.primary,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const AvailableClubsList(), // Widget to list available clubs
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}