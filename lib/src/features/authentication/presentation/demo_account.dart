import 'package:flutter/material.dart';

class DemoAccount extends StatefulWidget {
  const DemoAccount({super.key});

  // Attribute

  // Methoden
  @override
  State<DemoAccount> createState() => _DemoAccountState();
}

class _DemoAccountState extends State<DemoAccount> {
// State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Тук можете да добавите атрибути на AppBar, като например заглавие и др.
        title: const Text('phoniron'),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}
