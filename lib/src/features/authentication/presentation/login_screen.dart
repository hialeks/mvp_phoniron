import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/faq_screen.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:mvp_phoniron/src/features/overview/presentation/home_screen.dart';

class LoginScreen extends StatefulWidget {
  // Attribute
  final DatabaseRepository databaseRepository;

  // Konstruktor
  const LoginScreen({super.key, required this.databaseRepository});

  // Methoden
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // state:
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Center(
                    child: Image.asset(
                      "assets/logos/logo_black.png",
                      height: 170,
                    ),
                  ),
                  const SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaqScreen(),
                            ),
                          );
                        },
                        child: const Text("FAQ"),
                      ),
                      const Text(" I "),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaqScreen(),
                            ),
                          );
                        },
                        child: const Text("Demo Account"),
                      ),
                      const Divider(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email oder Phone number",
                      suffixIcon: Icon(
                        Icons.email,
                        //  color: Color(0xFF006973),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      labelText: "Passwort",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: showPassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Paswort vergessen?"),
                    ],
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: () {
                      // TODO: login logik einbauen

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverviewScreen(
                            databaseRepository: widget.databaseRepository,
                          ),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Login"),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Noch keinen Account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(
                                databaseRepository: widget.databaseRepository,
                              ),
                            ),
                          );
                        },
                        child: const Text("Zur Registrierung"),
                      ),
                    ],
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
