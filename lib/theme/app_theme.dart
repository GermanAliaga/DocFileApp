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

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003c47),
      surfaceTint: Color(0xff006879),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1d7789),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003c46),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1c7788),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003c48),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1f778b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5e231e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa25851),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff0c1214),
      onSurfaceVariant: Color(0xff2f383a),
      outline: Color(0xff4b5457),
      outlineVariant: Color(0xff666e71),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xff84d2e6),
      primaryFixed: Color(0xff1d7789),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff005d6d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff1c7788),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005e6c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1f778b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005d6f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2c7c9),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff4f6),
      surfaceContainer: Color(0xffe4e9eb),
      surfaceContainerHigh: Color(0xffd8dedf),
      surfaceContainerHighest: Color(0xffcdd2d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00313a),
      surfaceTint: Color(0xff006879),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00515f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00313a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00515e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00313c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff005160),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff511a15),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff76362f),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafc),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff252d30),
      outlineVariant: Color(0xff424b4d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xff84d2e6),
      primaryFixed: Color(0xff00515f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003843),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00515e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003842),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff005160),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003844),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4babb),
      surfaceBright: Color(0xfff5fafc),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf2f3),
      surfaceContainer: Color(0xffdee3e5),
      surfaceContainerHigh: Color(0xffd0d5d7),
      surfaceContainerHighest: Color(0xffc2c7c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
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

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ae8fc),
      surfaceTint: Color(0xff84d2e6),
      onPrimary: Color(0xff002a32),
      primaryContainer: Color(0xff4b9bae),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff99e8fb),
      onSecondary: Color(0xff002a32),
      secondaryContainer: Color(0xff4a9cad),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xff9be8fe),
      onTertiary: Color(0xff002a33),
      tertiaryContainer: Color(0xff4d9bb0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff48130f),
      errorContainer: Color(0xffcc7b72),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd5dee1),
      outline: Color(0xffaab3b7),
      outlineVariant: Color(0xff899295),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff004f5d),
      primaryFixed: Color(0xffaaedff),
      onPrimaryFixed: Color(0xff001419),
      primaryFixedDim: Color(0xff84d2e6),
      onPrimaryFixedVariant: Color(0xff003c47),
      secondaryFixed: Color(0xffa6eeff),
      onSecondaryFixed: Color(0xff001418),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff003c46),
      tertiaryFixed: Color(0xffafecff),
      onTertiaryFixed: Color(0xff001419),
      tertiaryFixedDim: Color(0xff85d2e8),
      onTertiaryFixedVariant: Color(0xff003c48),
      surfaceDim: Color(0xff0e1416),
      surfaceBright: Color(0xff3f4547),
      surfaceContainerLowest: Color(0xff040809),
      surfaceContainerLow: Color(0xff191f20),
      surfaceContainer: Color(0xff23292a),
      surfaceContainerHigh: Color(0xff2e3435),
      surfaceContainerHighest: Color(0xff393f40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd5f5ff),
      surfaceTint: Color(0xff84d2e6),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff80cee2),
      onPrimaryContainer: Color(0xff000d11),
      secondary: Color(0xffd3f6ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff7fcee0),
      onSecondaryContainer: Color(0xff000d11),
      tertiary: Color(0xffd7f5ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff81cee4),
      onTertiaryContainer: Color(0xff000d12),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea5),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0e1416),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe9f1f5),
      outlineVariant: Color(0xffbbc4c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff004f5d),
      primaryFixed: Color(0xffaaedff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff84d2e6),
      onPrimaryFixedVariant: Color(0xff001419),
      secondaryFixed: Color(0xffa6eeff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff83d2e4),
      onSecondaryFixedVariant: Color(0xff001418),
      tertiaryFixed: Color(0xffafecff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff85d2e8),
      onTertiaryFixedVariant: Color(0xff001419),
      surfaceDim: Color(0xff0e1416),
      surfaceBright: Color(0xff4b5153),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b2122),
      surfaceContainer: Color(0xff2b3133),
      surfaceContainerHigh: Color(0xff363c3e),
      surfaceContainerHighest: Color(0xff424849),
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
    lightMediumContrast: ColorFamily(
      color: Color(0xff8c4a60),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd9e2),
      onColorContainer: Color(0xff703348),
    ),
    lightHighContrast: ColorFamily(
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
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb1c8),
      onColor: Color(0xff541d32),
      colorContainer: Color(0xff703348),
      onColorContainer: Color(0xffffd9e2),
    ),
    darkHighContrast: ColorFamily(
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
