import 'package:flutter/material.dart';

class CommonAppBar extends AppBar {
  final Function() onPressed;
  final bool isDarkTheme;
  final Widget title;

  CommonAppBar({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isDarkTheme,
  }) : super(
          centerTitle: true,
          title: title,
          actions: [
            IconButton(
              onPressed: onPressed,
              icon: isDarkTheme
                  ? const Icon(Icons.light_mode_outlined)
                  : const Icon(Icons.dark_mode_outlined),
            ),
          ],
        );
}
