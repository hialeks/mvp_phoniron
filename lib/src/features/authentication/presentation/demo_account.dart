import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/demo_home_new.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/login_screen.dart';

class DemoAccount extends StatefulWidget {
  final DatabaseRepository databaseRepository;

  const DemoAccount({super.key, required this.databaseRepository});
  // Methoden
  @override
  State<DemoAccount> createState() => _DemoAccountState();
}

class _DemoAccountState extends State<DemoAccount> {
// State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/logos/logo_black.png",
                      height: 190,
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Login Button

                  FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DemoHomeNew(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(270, 40)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Demo Account"),
                    ),
                  ),
                  const SizedBox(height: 64),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(
                            databaseRepository: widget.databaseRepository,
                          ),
                        ),
                      );
                    },
                    child: const Text("Abrechen"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
