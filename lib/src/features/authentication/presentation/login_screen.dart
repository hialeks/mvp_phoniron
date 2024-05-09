import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/demo_account.dart';
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

                  // Text Menu

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
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
                              builder: (context) => SignUpScreen(
                                databaseRepository: widget.databaseRepository,
                              ),
                            ),
                          );
                        },
                        child: const Text("Register"),
                      ),
                    ],
                  ),

                  // Text Fields

                  const SizedBox(height: 24),
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

                  // Passwort vergessen

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                        child: const Text("Passwort vergessen?"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Login Button

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
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(270, 50)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Login"),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                  color: Color.fromARGB(107, 147, 156, 157),
                                  thickness: 0.7,
                                  indent: 80.0,
                                  endIndent: 10.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Oder Login mit"),
                            ),
                            Expanded(
                              child: Divider(
                                  color: Color.fromARGB(107, 147, 156, 157),
                                  thickness: 0.7,
                                  indent: 10.0,
                                  endIndent: 80.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Login Providers

                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/app_elements/google_icon.png",
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(width: 50),
                      Image.asset(
                        "assets/app_elements/apple_icon.png",
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(width: 50),
                      Image.asset(
                        "assets/app_elements/linkedin_icon.png",
                        width: 27,
                        height: 27,
                      ),
                      const SizedBox(width: 50),
                      Image.asset(
                        "assets/app_elements/xing_icon.png",
                        width: 27,
                        height: 27,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                              ));
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
