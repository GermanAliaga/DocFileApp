import "package:docfileapp/theme/color_scheme.dart";
import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006879),
      surfaceTint: Color(0xff006879),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaaedff),
      onPrimaryContainer: Color(0xff004e5c),
      secondary: Color(0xff006878),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa6eeff),
      onSecondaryContainer: Color(0xff004e5b),
      tertiary: Color(0xff00687b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffafecff),
      onTertiaryContainer: Color(0xff004e5d),
      error: Color(0xff904a43),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff73332d),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3f484b),
      outline: Color(0xff70797c),
      outlineVariant: Color(0xffbfc8cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xff84d2e6),
      primaryFixed: Color(0xffaaedff),
      onPrimaryFixed: Color(0xff001f26),
      primaryFixedDim: Color(0xff84d2e6),
      onPrimaryFixedVariant: Color(0xff004e5c),
      secondaryFixed: Color(0xffa6eeff),
      onSecondaryFixed: Color(0xff001f25),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff004e5b),
      tertiaryFixed: Color(0xffafecff),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xff85d2e8),
      onTertiaryFixedVariant: Color(0xff004e5d),
      surfaceDim: Color(0xffd5dbdd),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f6),
      surfaceContainer: Color(0xffe9eff1),
      surfaceContainerHigh: Color(0xffe4e9eb),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff84d2e6),
      surfaceTint: Color(0xff84d2e6),
      onPrimary: Color(0xff003640),
      primaryContainer: Color(0xff004e5c),
      onPrimaryContainer: Color(0xffaaedff),
      secondary: Color(0xff83d2e4),
      onSecondary: Color(0xff00363f),
      secondaryContainer: Color(0xff004e5b),
      onSecondaryContainer: Color(0xffa6eeff),
      tertiary: Color(0xff85d2e8),
      onTertiary: Color(0xff003641),
      tertiaryContainer: Color(0xff004e5d),
      onTertiaryContainer: Color(0xffafecff),
      error: Color(0xffffb4ab),
      onError: Color(0xff561e19),
      errorContainer: Color(0xff73332d),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1416),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbfc8cb),
      outline: Color(0xff899295),
      outlineVariant: Color(0xff3f484b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff006879),
      primaryFixed: Color(0xffaaedff),
      onPrimaryFixed: Color(0xff001f26),
      primaryFixedDim: Color(0xff84d2e6),
      onPrimaryFixedVariant: Color(0xff004e5c),
      secondaryFixed: Color(0xffa6eeff),
      onSecondaryFixed: Color(0xff001f25),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff004e5b),
      tertiaryFixed: Color(0xffafecff),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xff85d2e8),
      onTertiaryFixedVariant: Color(0xff004e5d),
      surfaceDim: Color(0xff0e1416),
      surfaceBright: Color(0xff343a3c),
      surfaceContainerLowest: Color(0xff090f11),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2d),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
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

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xff000000),
    value: Color(0xff000000),
    light: ColorFamily(
      color: Color(0xff8c4a60),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd9e2),
      onColorContainer: Color(0xff703348),
    ),
    dark: ColorFamily(
      color: Color(0xffffb1c8),
      onColor: Color(0xff541d32),
      colorContainer: Color(0xff703348),
      onColorContainer: Color(0xffffd9e2),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor1,
      ];
}
