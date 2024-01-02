import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
    required this.borderRadius,
    required this.verticalPadding,
    required this.horizontalPadding,
  });

  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
