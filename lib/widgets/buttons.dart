import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/who_am_i.dart';

class WelcomeScreenBtn extends StatelessWidget {
  final String content;
  final Color bg_color;

  WelcomeScreenBtn(this.content, this.bg_color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 4, bottom: 10, right: 30, left: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            backgroundColor: bg_color,
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: () => goToWhoAmI(context),
          child: Text(
            content,
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
    );
  }

  void goToWhoAmI(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WhoAmI(),
        ));
  }
}
