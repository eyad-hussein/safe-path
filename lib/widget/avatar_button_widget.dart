import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({super.key, required this.onTap, required this.path});

  final GestureTapCallback onTap;
  final String path;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(90),
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          path,
        ),
      ),
    );
  }
}
