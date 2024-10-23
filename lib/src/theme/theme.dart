import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3c5f90),
      surfaceTint: Color(0xff3c5f90),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd4e3ff),
      onPrimaryContainer: Color(0xff001c3a),
      secondary: Color(0xff825513),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffddb7),
      onSecondaryContainer: Color(0xff2a1700),
      tertiary: Color(0xff765085),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff7d8ff),
      onTertiaryContainer: Color(0xff2d0b3d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff43474e),
      outline: Color(0xff74777f),
      outlineVariant: Color(0xffc3c6cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffa6c8ff),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001c3a),
      primaryFixedDim: Color(0xffa6c8ff),
      onPrimaryFixedVariant: Color(0xff224876),
      secondaryFixed: Color(0xffffddb7),
      onSecondaryFixed: Color(0xff2a1700),
      secondaryFixedDim: Color(0xfff7bb70),
      onSecondaryFixedVariant: Color(0xff653e00),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff2d0b3d),
      tertiaryFixedDim: Color(0xffe4b7f3),
      onTertiaryFixedVariant: Color(0xff5c386b),
      surfaceDim: Color(0xffd9dae0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe1e2e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1d4472),
      surfaceTint: Color(0xff3c5f90),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5376a7),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5f3b00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9b6b28),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff583567),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8d669c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff3f434a),
      outline: Color(0xff5c5f67),
      outlineVariant: Color(0xff777b83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffa6c8ff),
      primaryFixed: Color(0xff5376a7),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3a5d8d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff9b6b28),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff7f5310),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8d669c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff734e82),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dae0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe1e2e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002246),
      surfaceTint: Color(0xff3c5f90),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1d4472),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff331d00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5f3b00),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff351244),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff583567),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff20242b),
      outline: Color(0xff3f434a),
      outlineVariant: Color(0xff3f434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffe4ecff),
      primaryFixed: Color(0xff1d4472),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002d58),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5f3b00),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff412700),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff583567),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff401e4f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dae0),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe1e2e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa6c8ff),
      surfaceTint: Color(0xffa6c8ff),
      onPrimary: Color(0xff01315e),
      primaryContainer: Color(0xff224876),
      onPrimaryContainer: Color(0xffd4e3ff),
      secondary: Color(0xfff7bb70),
      onSecondary: Color(0xff462a00),
      secondaryContainer: Color(0xff653e00),
      onSecondaryContainer: Color(0xffffddb7),
      tertiary: Color(0xffe4b7f3),
      onTertiary: Color(0xff442253),
      tertiaryContainer: Color(0xff5c386b),
      onTertiaryContainer: Color(0xfff7d8ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111318),
      onSurface: Color(0xffe1e2e9),
      onSurfaceVariant: Color(0xffc3c6cf),
      outline: Color(0xff8d9199),
      outlineVariant: Color(0xff43474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff3c5f90),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001c3a),
      primaryFixedDim: Color(0xffa6c8ff),
      onPrimaryFixedVariant: Color(0xff224876),
      secondaryFixed: Color(0xffffddb7),
      onSecondaryFixed: Color(0xff2a1700),
      secondaryFixedDim: Color(0xfff7bb70),
      onSecondaryFixedVariant: Color(0xff653e00),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff2d0b3d),
      tertiaryFixedDim: Color(0xffe4b7f3),
      onTertiaryFixedVariant: Color(0xff5c386b),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffadccff),
      surfaceTint: Color(0xffa6c8ff),
      onPrimary: Color(0xff001631),
      primaryContainer: Color(0xff7092c6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffcbf74),
      onSecondary: Color(0xff231300),
      secondaryContainer: Color(0xffbb8641),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe8bbf7),
      onTertiary: Color(0xff270537),
      tertiaryContainer: Color(0xffab82ba),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xfffbfaff),
      onSurfaceVariant: Color(0xffc8cad4),
      outline: Color(0xffa0a3ab),
      outlineVariant: Color(0xff80838b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff244978),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001128),
      primaryFixedDim: Color(0xffa6c8ff),
      onPrimaryFixedVariant: Color(0xff0b3765),
      secondaryFixed: Color(0xffffddb7),
      onSecondaryFixed: Color(0xff1c0e00),
      secondaryFixedDim: Color(0xfff7bb70),
      onSecondaryFixedVariant: Color(0xff4e2f00),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff220032),
      tertiaryFixedDim: Color(0xffe4b7f3),
      onTertiaryFixedVariant: Color(0xff4a285a),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffbfaff),
      surfaceTint: Color(0xffa6c8ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffadccff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xfffcbf74),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe8bbf7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffbfaff),
      outline: Color(0xffc8cad4),
      outlineVariant: Color(0xffc8cad4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff002a54),
      primaryFixed: Color(0xffdbe7ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffadccff),
      onPrimaryFixedVariant: Color(0xff001631),
      secondaryFixed: Color(0xffffe2c3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xfffcbf74),
      onSecondaryFixedVariant: Color(0xff231300),
      tertiaryFixed: Color(0xfff9deff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe8bbf7),
      onTertiaryFixedVariant: Color(0xff270537),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
