import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

typedef OnPressed = void Function()?;

class ExtendedFab extends StatelessWidget {
  const ExtendedFab(
      {super.key,
      required this.text,
      this.onPressed,
      this.icon,
      this.animate = true});

  final String text;
  final OnPressed? onPressed;
  final HeroIcons? icon;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 4,
      highlightElevation: 8,
      backgroundColor: Theme.of(context).primaryColor,
      icon: icon != null
          ? HeroIcon(
              icon!,
              color: Colors.white,
            )
          : null,
      label: Text(
        text,
        style: Theme.of(context)
            .primaryTextTheme
            .subtitle2!
            .copyWith(color: Colors.white),
      ),
      onPressed: onPressed,
    );
  }
}
