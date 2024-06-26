import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff1b828c),
    primaryContainer: Color(0xffd9f7f9),
    secondary: Color(0xfff5fafb),
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
    thinBorderWidth: 0.5,
    thickBorderWidth: 1.0,
    splashType: FlexSplashType.instantSplash,
    defaultRadius: 11.0,
    adaptiveRadius: FlexAdaptive.all(),
    defaultRadiusAdaptive: 7.0,
    filledButtonRadius: 7.0,
    elevatedButtonRadius: 7.0,
    elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    outlinedButtonRadius: 7.0,
    toggleButtonsRadius: 11.0,
    toggleButtonsSchemeColor: SchemeColor.primary,
    toggleButtonsUnselectedSchemeColor: SchemeColor.primary,
    toggleButtonsBorderSchemeColor: SchemeColor.primary,
    toggleButtonsBorderWidth: 0.5,
    segmentedButtonRadius: 7.0,
    segmentedButtonSchemeColor: SchemeColor.primary,
    segmentedButtonBorderWidth: 0.5,
    inputDecoratorSchemeColor: SchemeColor.secondary,
    inputDecoratorBackgroundAlpha: 167,
    inputDecoratorBorderSchemeColor: SchemeColor.primary,
    inputDecoratorRadius: 11.0,
    inputDecoratorBorderWidth: 0.5,
    inputDecoratorFocusedBorderWidth: 1.0,
    inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
    inputSelectionHandleSchemeColor: SchemeColor.secondary,
    fabUseShape: true,
    fabRadius: 17.0,
    fabSchemeColor: SchemeColor.surfaceVariant,
    chipRadius: 9.0,
    cardRadius: 11.0,
    popupMenuRadius: 7.0,
    popupMenuElevation: 1.0,
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
  //! .copyWith(textTheme: GoogleFonts.(z.B.)ubuntuTextTheme(),
);

ThemeData darkTheme = FlexThemeData.dark(
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
    splashType: FlexSplashType.instantSplash,
    defaultRadius: 11.0,
    adaptiveRadius: FlexAdaptive.all(),
    defaultRadiusAdaptive: 7.0,
    thinBorderWidth: 0.5,
    thickBorderWidth: 1.0,
    filledButtonRadius: 7.0,
    elevatedButtonRadius: 7.0,
    elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    outlinedButtonRadius: 7.0,
    toggleButtonsRadius: 11.0,
    toggleButtonsSchemeColor: SchemeColor.primary,
    toggleButtonsUnselectedSchemeColor: SchemeColor.primary,
    toggleButtonsBorderSchemeColor: SchemeColor.primary,
    toggleButtonsBorderWidth: 0.5,
    segmentedButtonRadius: 7.0,
    segmentedButtonSchemeColor: SchemeColor.primary,
    segmentedButtonBorderWidth: 0.5,
    inputDecoratorRadius: 11.0,
    inputDecoratorBorderWidth: 0.5,
    inputDecoratorFocusedBorderWidth: 1.0,
    fabUseShape: true,
    fabRadius: 17.0,
    fabSchemeColor: SchemeColor.surfaceVariant,
    chipRadius: 9.0,
    cardRadius: 11.0,
    popupMenuRadius: 7.0,
    popupMenuElevation: 1.0,
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
);
