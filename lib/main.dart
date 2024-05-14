import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/app.dart';

Future<void> main() async {
  await Future.delayed(
    const Duration(seconds: 5),
  );

  runApp(
    const App(),
  );
}
