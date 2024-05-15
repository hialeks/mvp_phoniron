import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/faq_screen.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/login_screen.dart';
import 'package:mvp_phoniron/src/features/demo/demo_enter.dart';

class SignUpScreen extends StatefulWidget {
  // Attribute
  final DatabaseRepository databaseRepository;

  // Konstruktor
  const SignUpScreen({super.key, required this.databaseRepository});

  // Methoden
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // state
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
                  Center(
                    child: Image.asset(
                      "assets/logos/logo_black.png",
                      height: 150,
                    ),
                  ),

                  // Text Menu

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 0,
                      ),
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
                              builder: (context) => DemoAccount(
                                databaseRepository: widget.databaseRepository,
                              ),
                            ),
                          );
                        },
                        child: const Text("Demo"),
                      ),
                      const Text(" I "),
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
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email oder Phone number",
                      suffixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(107, 0, 105, 115),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  TextFormField(
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
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
                        color: const Color.fromARGB(107, 0, 105, 115),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "Passwort wiederholen",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: showPassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: const Color.fromARGB(107, 0, 105, 115),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  FilledButton(
                    onPressed: () {
                      // TODO: registrierungs logik einbauen
                      // nach der Registrierung
                      // navigiere zur Uebersicht
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(270, 50)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Registrierung starten"),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Oder starten Sie die Registrierung mit"),
                    ],
                  ),

                  // Login Providers

                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/app_elements/google_icon.png',
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        icon: Image.asset(
                          'assets/app_elements/apple_icon.png',
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        icon: Image.asset(
                          'assets/app_elements/linkedin_icon.png',
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 30),
                      IconButton(
                        icon: Image.asset(
                          'assets/app_elements/xing_icon.png',
                          width: 25,
                          height: 25,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Bereits einen Account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(
                                  databaseRepository: widget.databaseRepository,
                                ),
                              ));
                        },
                        child: const Text("Zum Login"),
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
