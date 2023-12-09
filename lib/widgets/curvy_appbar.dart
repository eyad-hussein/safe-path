import 'package:flutter/material.dart';

class CurvyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CurvyAppBar({Key? key})
      : preferredSize = Size.fromHeight(80.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Safety & Precautions',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

class CurvedAppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final double radius = 24.0;
    final double diameter = radius * 2;
    final Rect arcRect = Rect.fromLTWH(
        rect.left - radius, rect.top - radius, diameter, diameter);

    return Path()
      ..addOval(arcRect)
      ..addRect(Rect.fromLTWH(
          rect.left, rect.top + radius, rect.width, rect.height - radius))
      ..addOval(Rect.fromCircle(
          center: Offset(rect.right - radius, rect.top + radius),
          radius: radius))
      ..close();
  }
}
