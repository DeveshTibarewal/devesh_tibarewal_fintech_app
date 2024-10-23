import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  double get fullWidth => MediaQuery.of(this).size.width;

  double get fullHeight => MediaQuery.of(this).size.height;

  double getWidth({double percentage = 1}) => fullWidth * percentage;

  double getHeight({double percentage = 1}) => fullHeight * percentage;
}
