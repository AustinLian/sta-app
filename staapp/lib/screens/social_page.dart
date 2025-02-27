import 'package:flutter/material.dart';
import 'package:staapp/widgets/extras/header.dart';
import 'package:staapp/widgets/socials/clubs_list.dart'; // Correct import
import 'package:staapp/theme/styles.dart';
import 'package:staapp/screens/join_club_page.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(name: "Socials"),
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
                      'Clubs I\'m In',
                      style: theme.textTheme.displayLarge?.copyWith(
                        color: Styles.primary,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const ClubsList(), // Assuming ClubsList is a widget that lists the clubs
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JoinClubPage(),
                          ),
                        );
                      },
                      child: const Text('Join a Club'),
                    ),
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