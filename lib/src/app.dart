import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/data/mock_database.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/login_screen.dart';
import 'package:mvp_phoniron/src/features/login/domain/address.dart';
import 'package:mvp_phoniron/src/features/login/presentation/user_profile.dart';
import 'package:mvp_phoniron/src/features/login/presentation/user_type.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xff1b828c),
          primaryContainer: Color(0xffd9f7f9),
          secondary: Color(0xffe0e0e0),
          secondaryContainer: Color(0xffeeeeee),
          tertiary: Color(0xff78909c),
          tertiaryContainer: Color(0xffc3e7ff),
          appBarColor: Color(0xffeeeeee),
          error: Color(0xffb00020),
        ),
        usedColors: 7,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
        blendLevel: 1,
        appBarStyle: FlexAppBarStyle.background,
        bottomAppBarElevation: 0.0,
        tooltipsMatchBackground: true,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 7,
          splashType: FlexSplashType.inkRipple,
          defaultRadius: 11.0,
          adaptiveRadius: FlexAdaptive.all(),
          filledButtonRadius: 7.0,
          elevatedButtonRadius: 7.0,
          elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
          outlinedButtonRadius: 7.0,
          toggleButtonsRadius: 11.0,
          toggleButtonsSchemeColor: SchemeColor.primary,
          toggleButtonsUnselectedSchemeColor: SchemeColor.primary,
          toggleButtonsBorderSchemeColor: SchemeColor.primary,
          segmentedButtonRadius: 11.0,
          segmentedButtonSchemeColor: SchemeColor.primary,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          fabUseShape: true,
          fabRadius: 17.0,
          fabSchemeColor: SchemeColor.surfaceVariant,
          chipRadius: 9.0,
          popupMenuRadius: 6.0,
          popupMenuElevation: 4.0,
          alignedDropdown: true,
          dialogElevation: 3.0,
          dialogRadius: 20.0,
          useInputDecoratorThemeInDialogs: true,
          drawerIndicatorRadius: 11.0,
          drawerIndicatorSchemeColor: SchemeColor.primary,
          bottomNavigationBarMutedUnselectedLabel: false,
          bottomNavigationBarMutedUnselectedIcon: false,
          menuRadius: 7.0,
          menuElevation: 1.0,
          menuBarBackgroundSchemeColor: SchemeColor.onInverseSurface,
          menuBarElevation: 1.0,
          menuBarShadowColor: Color(0x00000000),
          navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.primary,
          navigationBarIndicatorOpacity: 1.00,
          navigationBarBackgroundSchemeColor: SchemeColor.background,
          navigationBarElevation: 0.0,
          navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.primary,
          navigationRailIndicatorOpacity: 1.00,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xff82bace),
          primaryContainer: Color(0xff04666f),
          secondary: Color(0xffffd682),
          secondaryContainer: Color(0xff9e7910),
          tertiary: Color(0xff243e4d),
          tertiaryContainer: Color(0xff426173),
          appBarColor: Color(0xff9e7910),
          error: Color(0xffcf6679),
        ),
        usedColors: 7,
        surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
        blendLevel: 4,
        appBarStyle: FlexAppBarStyle.background,
        tooltipsMatchBackground: true,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendTextTheme: true,
          splashType: FlexSplashType.inkRipple,
          defaultRadius: 11.0,
          adaptiveRadius: FlexAdaptive.all(),
          filledButtonRadius: 7.0,
          elevatedButtonRadius: 7.0,
          elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
          outlinedButtonRadius: 7.0,
          toggleButtonsRadius: 11.0,
          toggleButtonsSchemeColor: SchemeColor.primary,
          toggleButtonsUnselectedSchemeColor: SchemeColor.primary,
          toggleButtonsBorderSchemeColor: SchemeColor.primary,
          segmentedButtonRadius: 11.0,
          segmentedButtonSchemeColor: SchemeColor.primary,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          fabUseShape: true,
          fabRadius: 17.0,
          fabSchemeColor: SchemeColor.surfaceVariant,
          chipRadius: 9.0,
          popupMenuRadius: 6.0,
          popupMenuElevation: 4.0,
          alignedDropdown: true,
          dialogElevation: 3.0,
          dialogRadius: 20.0,
          useInputDecoratorThemeInDialogs: true,
          drawerIndicatorRadius: 11.0,
          drawerIndicatorSchemeColor: SchemeColor.primary,
          bottomNavigationBarMutedUnselectedLabel: false,
          bottomNavigationBarMutedUnselectedIcon: false,
          menuRadius: 7.0,
          menuElevation: 1.0,
          menuBarBackgroundSchemeColor: SchemeColor.onInverseSurface,
          menuBarElevation: 1.0,
          menuBarShadowColor: Color(0x00000000),
          navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.primary,
          navigationBarIndicatorOpacity: 1.00,
          navigationBarBackgroundSchemeColor: SchemeColor.background,
          navigationBarElevation: 0.0,
          navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.primary,
          navigationRailIndicatorOpacity: 1.00,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

      themeMode: ThemeMode.light,
      home: LoginScreen(
        databaseRepository: databaseRepository,
      ),
      // OverviewScreen(databaseRepository: databaseRepository),
    );
  }
}
