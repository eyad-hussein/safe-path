import 'package:flutter/material.dart';

class IdentityField extends StatelessWidget {
  const IdentityField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Field(),
        Spacer(),
        Field(),
        Spacer(),
        Field(),
        Spacer(),
        Field(false),
        Spacer(),
      ],
    );
  }
}

Expanded Field([bool next = true]) {
  return Expanded(
    child: TextField(
      textInputAction:
          (next == true) ? TextInputAction.next : TextInputAction.done,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 40),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(),
    ),
  );
}
