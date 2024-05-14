import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String nationality;
  final String contactType;
  final String lastAction;

  const ChatCard({
    super.key,
    required this.name,
    required this.nationality,
    required this.contactType,
    required this.lastAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/avatars/avatar.png'),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                Row(
                  children: [
                    Image.asset(
                      'assets/country_flags/germany.png',
                      height: 16,
                    ),
                    const SizedBox(width: 8),
                    const Icon(PhosphorIconsLight.buildings),
                  ],
                ),
              ],
            ),
            subtitle: Text(lastAction),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: List.generate(
            5,
            (index) => ChatCard(
              name: 'User ${index + 1}',
              nationality: 'flag', // Име на файла за снимка на националност
              contactType: 'family', // Пример за тип на контакта
              lastAction: 'Sent a post', // Последно действие
            ),
          ),
        ),
      ),
    );
  }
}
