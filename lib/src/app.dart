import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/styles/theme.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/data/mock_database.dart';
import 'package:mvp_phoniron/src/features/authentication/domain/address.dart';
import 'package:mvp_phoniron/src/features/authentication/domain/user_profile.dart';
import 'package:mvp_phoniron/src/features/authentication/domain/user_type.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/login_screen.dart';

class Phoniron extends StatelessWidget {
  const Phoniron({super.key});

  @override
  Widget build(BuildContext context) {
    var userProfile = UserProfile(
      phonironObjectPrimaryKey: "QWER-T7UI-OPAS-DFGH",
      userID: "405968",
      profileTypes: UserType(profileTypes: [1.0, 2.0]),
      userFullName: "Aleksander Stefanov Uzunov",
      userDisplayedName: "Aleksander Uzunov",
      gender: ["Male"],
      nationality: ["Bulgarian"],
      countryOfResidence: ["Deutschland"],
      phoneNumber: 1234567890,
      email: "hi@auzunov.com",
      web: "auzunov.com",
      socialProfiles: ["Facebook", "Xing", "Linkedin"],
      homeAddress: Address(
        country: "Deutschland",
        zip: "21502",
        city: "Geestacht",
        street: "Brunnenweg",
        streetNumber: "17",
      ),
      postAddress: Address(
        country: "",
        zip: "",
        city: "",
        street: "",
        streetNumber: "",
      ),
      dateOfBirth: DateTime(1974, 17, 11),
      contactPreferences: "Per E-Mail",
    );

    DatabaseRepository databaseRepository = MockDatabase();
    databaseRepository.registerUser(userProfile);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: LoginScreen(
        databaseRepository: databaseRepository,
      ),
    );
  }
}
