import 'package:flutter/material.dart';
import '../widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              "images/main_bg.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 400,
                  child: Image.asset('images/logo.png'),
                ),
                Spacer(),
                WelcomeScreenBtn("Sign Up", Color.fromRGBO(32, 147, 238, 1)),
                WelcomeScreenBtn("Log In", Color.fromRGBO(32, 147, 238, 1)),
                SizedBox(
                  height: 100,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
