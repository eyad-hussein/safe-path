import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CustomFormFieldType {
  name,
  age,
  phone,
  email,
  password,
}

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.type,
    required this.controller,
    required this.hintText,
  });

  final CustomFormFieldType type;
  final TextEditingController controller;
  final String hintText;

  SvgPicture _getIcon(CustomFormFieldType type) {
    String iconPath =
        ''; // Provide the SVG file path or asset name for each type

    switch (type) {
      case CustomFormFieldType.name:
        iconPath = 'assets/icons/user.svg';
        break;
      case CustomFormFieldType.age:
        iconPath = 'assets/icons/hash.svg';
        break;
      case CustomFormFieldType.phone:
        iconPath = 'assets/icons/phone.svg';
        break;
      case CustomFormFieldType.email:
        iconPath = 'assets/icons/mail.svg';
        break;
      case CustomFormFieldType.password:
        iconPath = 'assets/icons/lock.svg';
        break;
      default:
        iconPath = 'assets/icons/user.svg';
    }

    return SvgPicture.asset(
      iconPath,
      height: 24, // Adjust the height as needed
      width: 24, // Adjust the width as needed
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ]),
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.onTertiary,
        controller: controller,
        obscureText: type == CustomFormFieldType.password ? true : false,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onTertiary,
          fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          icon: _getIcon(type),
          iconColor: Theme.of(context).colorScheme.onTertiary,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
