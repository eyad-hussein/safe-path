import 'package:flutter/material.dart';

class InvertedButton extends StatelessWidget {
  const InvertedButton({
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
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        foregroundColor: Colors.white30,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
