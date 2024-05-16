import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';

class OverviewScreen extends StatelessWidget {
  // Attribute
  final DatabaseRepository databaseRepository;

  // Konstruktor
  const OverviewScreen({super.key, required this.databaseRepository});

  // Methoden
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("phoniron"),
      ),
    );
  }
}
