import '../features/login/domain/user_profile.dart';

abstract class DatabaseRepository {
  void registerUser(UserProfile userProfile);
  List<UserProfile> getAllUserProfiles();
}
