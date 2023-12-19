import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
    required this.buttonType,
    required this.roundedValue,
    required this.height,
  });

  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final ButtonType buttonType;
  final double roundedValue;
  final int height;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;

    switch (buttonType) {
      case ButtonType.primary:
        backgroundColor = Theme.of(context).colorScheme.primary;
        textColor = Colors.white;
        break;
      case ButtonType.secondary:
        backgroundColor = Theme.of(context).colorScheme.background;
        textColor = Theme.of(context).colorScheme.primary;
        break;
    }
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(roundedValue),
        ),
        minimumSize: Size(double.infinity, height.toDouble()),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: Theme.of(context).textTheme.displayLarge!.fontFamily,
        ),
      ),
    );
  }
}
