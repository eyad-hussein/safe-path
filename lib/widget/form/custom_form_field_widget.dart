import 'package:flutter/material.dart';

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

  Icon _getIcon(CustomFormFieldType type) {
    switch (type) {
      case CustomFormFieldType.name:
        return const Icon(Icons.person);
      case CustomFormFieldType.age:
        return const Icon(Icons.person);
      case CustomFormFieldType.phone:
        return const Icon(Icons.phone);
      case CustomFormFieldType.email:
        return const Icon(Icons.email);
      case CustomFormFieldType.password:
        return const Icon(Icons.lock);
      default:
        return const Icon(Icons.person);
    }
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
        controller: controller,
        obscureText: type == CustomFormFieldType.password ? true : false,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onTertiary,
          fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
          fontWeight: FontWeight.w300,
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
