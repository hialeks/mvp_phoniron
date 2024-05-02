import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'domain/address.dart';
import 'domain/user_profile.dart';
import 'domain/user_type.dart';

void main() {
  var userProfile = UserProfile(
    phonironObjectPrimaryKey: "QWER-TZUI-OPAS-DFGH",
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
}
