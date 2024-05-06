import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
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
                  Center(
                    child: Image.asset(
                      "assets/logos/logo_black.png",
                      height: 170,
                    ),
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Color(0xFF006973)),
                          //   borderRadius: BorderRadius.all(Radius.circular(11)),
                          ),
                      focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Color(0xFF006973)),
                          //   borderRadius: BorderRadius.all(Radius.circular(11)),
                          ),
                      // filled: true,
                      // fillColor: Color(0xFFF5FAFB),
                      labelText: "Email oder Phone number",
                      // labelStyle:
                      //     TextStyle(fontSize: 12, color: Color(0xFF006973)),
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
                      enabledBorder: const OutlineInputBorder(
                          //  borderSide: BorderSide(color: Color(0xFF006973)),
                          //  borderRadius: BorderRadius.all(Radius.circular(11)),
                          ),
                      focusedBorder: const OutlineInputBorder(
                          //  borderSide: BorderSide(color: Color(0xFF006973)),
                          //  borderRadius: BorderRadius.all(Radius.circular(11)),
                          ),
                      labelText: "Passwort",
                      // labelStyle: const TextStyle(
                      //     fontSize: 12, color: Color(0xFF006973)),
                      suffixIcon: IconButton(
                        //  color: const Color(0xFF006973),
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
                  const SizedBox(height: 32),
                  ElevatedButton(
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
                  const Divider(),
                  const SizedBox(height: 32),
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
                    child: const Text("Noch keinen Account? Zur Registrierung"),
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
