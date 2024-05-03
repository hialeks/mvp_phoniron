import '../features/login/presentation/user_profile.dart';

abstract class DatabaseRepository {
  void registerUser(UserProfile userProfile);
  List<UserProfile> getAllUserProfiles();
}
