import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmall39 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 39.fSize,
      );
  static get displaySmallPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w800,
      );
  // Headline text style
  static get headlineMedium27 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineMedium28 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 28.fSize,
      );
  static get headlineMediumErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineMediumErrorContainer27 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 27.fSize,
      );
  static get headlineMediumErrorContainerExtraBold =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumExtraBold =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumGray50001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get headlineMediumPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 29.fSize,
      );
  // Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeErrorContainerMedium =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
