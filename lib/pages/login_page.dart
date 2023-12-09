import 'package:flutter/material.dart';
import 'package:safe_path/pages/signup_page.dart';
import 'package:safe_path/pages/fourm_page.dart';

import '../widgets/input_fields_main.dart';
import './identity.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double availableHeight = constraints.maxHeight;
      final double availableWidth = constraints.maxWidth;
      return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "images/main_bg.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: Offset(0, 3))
                    ]),
                height: availableHeight * 0.75,
                width: availableWidth,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.5, right: 16.5),
                  child: Column(
                    children: [
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                              fontSize: 38,
                              color: Color.fromRGBO(32, 147, 238, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      MainInput('E-mail', 'images/mail_check.svg'),
                      SizedBox(
                        height: 20,
                      ),
                      MainInput('Password', 'images/lock.svg'),
                      Spacer(),
                      SignBtn("Sign In", Color.fromRGBO(32, 147, 238, 1),
                          Color.fromRGBO(32, 147, 238, 1), goToHome),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: InkWell(
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                color: Color.fromRGBO(32, 147, 238, 1),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1.0,
                              width: availableWidth / 3,
                              color: Color.fromRGBO(181, 181, 181, 1),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Or',
                              style: TextStyle(
                                  color: Color.fromRGBO(181, 181, 181, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Expanded(
                            child: Container(
                              height: 1.0,
                              width: availableWidth / 3,
                              color: Color.fromRGBO(181, 181, 181, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        child: Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SignBtn("Sign Up", Colors.white,
                          Color.fromRGBO(32, 147, 238, 1), goToSignUp, false),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  void goToIdentity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IdentityVerifPage()),
    );
  }

  void goToSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUp()),
    );
  }

  void goToHome(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const SignUp()),
    // );
  }
  void GoToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForumPage()),
    );
  }
}
