import 'package:flutter/material.dart';
import 'package:flutter_easy_faq/flutter_easy_faq.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() {
    return _FaqScreen();
  }
}

class _FaqScreen extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phoniron / FAQ'), // Заглавие на вашата апликация
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            const SizedBox(height: 24),
            EasyFaq(
              question: "1. Was ist Phoniron?",
              answer:
                  "phoniron ist eine mobile Anwendung, die versucht, Probleme in drei verschiedenen Bereichen zu lösen: persönliche Kontaktlisten, soziale Interaktionen zwischen Kontakten und die Verbindung zwischen dem traditionellen und dem Online-Handel.",
              borderRadius: BorderRadius.circular(11),
            ),
            const SizedBox(height: 24),
            EasyFaq(
              question: "2. Was ist die Hauptidee hinter Phoniron?",
              answer:
                  "Die Hauptidee ist es, eine Plattform zu schaffen, auf der Benutzer ihre persönlichen Kontaktlisten verwalten, mit ihnen in virtuellen Räumen interagieren und sich mit Online-Shops verbinden können, um Produkte zu kaufen.",
              borderRadius: BorderRadius.circular(11),
            ),
            const SizedBox(height: 24),
            EasyFaq(
              question:
                  "3. Wie löst Phoniron das Problem mit persönlichen Kontaktlisten?",
              answer:
                  "phoniron ermöglicht es Benutzern, sich um die vollständigen Daten in ihrem persönlichen Profil zu kümmern. Dies ermöglicht es jedem Kontakt, immer vollständig und aktuell zu sein, dank der Sorgfalt des Benutzers, der ihn vertritt.",
              borderRadius: BorderRadius.circular(11),
            ),
            const SizedBox(height: 24),
            EasyFaq(
              question:
                  "4. Was ist das Ziel der sozialen Interaktionen in Phoniron?",
              answer:
                  "Das Ziel ist es, ein sichereres und transparenteres soziales Netzwerk zu schaffen, das die Interaktion zwischen den Kontakten in der Liste ermöglicht. Benutzer können verschiedene Ströme mit verschiedenen Zwecken erstellen, wie zum Beispiel Familie, Freunde, Kollegen und andere.",
              borderRadius: BorderRadius.circular(11),
            ),
            const SizedBox(height: 24),
            EasyFaq(
              question:
                  "5. Wie verbindet Phoniron den traditionellen und den Online-Handel?",
              answer:
                  "phoniron bietet die Möglichkeit, online physische Produkte zu kaufen, die im Moment sichtbar sind. Dies wird durch einen neuen Typ von Geschäften erreicht, in denen die Produkte ausgestellt sind, aber es keine Kassen gibt, sondern nur einen Barcode auf dem Produkt. Alle Zahlungen und die Planung der Lieferung erfolgen online.",
              borderRadius: BorderRadius.circular(11),
            ),
            const SizedBox(height: 24),
          ]),
        ),
      ),
    );
  }
}

// required String question;
//   required String answer;
//   TextStyle? questionTextStyle;
//   TextStyle? anserTextStyle;
//   Duration? duration = const Duration(milliseconds: 100);
//   Widget? expandedIcon;
//   Widget? collapsedIcon;
//   Color? backgroundColor;
//   BorderRadiusGeometry? borderRadius;
//   EdgeInsetsGeometry? padding = const EdgeInsets.symmetric(
//     horizontal: 16,
//     vertical: 10,
//   );
