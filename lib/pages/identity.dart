import 'package:flutter/material.dart';
import '../widgets/identity_verif.dart';
import '../widgets/input_fields_main.dart';

class IdentityVerifPage extends StatelessWidget {
  const IdentityVerifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            child: Icon(
              Icons.arrow_left_sharp,
              color: Color.fromRGBO(181, 181, 181, 1),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Identity Verification',
            style: TextStyle(
                color: Color.fromRGBO(32, 147, 238, 1),
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 40),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "Enter the 4-digit code sent to you at entered number +20 100 0000 000",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              IdentityField(),
              Spacer(),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Resend Code",
                  style: TextStyle(
                      color: Color.fromRGBO(32, 147, 238, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(flex: 11),
              Confirm("Confirm", Color.fromRGBO(32, 147, 238, 1),
                  Color.fromRGBO(32, 147, 238, 1), goToHome),
              Spacer()
            ],
          ),
        ),
      );
    });
  }

  void goToHome(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const HomePage()),
    // );
  }
}

class Confirm extends SignBtn {
  Confirm(super.content, super.bgColor, super.borderColor, super.callBack);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        margin: EdgeInsets.only(right: 40),
        height: 46,
        child: ElevatedButton(
          onPressed: () => callBack(context),
          child: Text(
            content,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: bgColor,
            side: BorderSide(
                style: BorderStyle.solid, color: borderColor, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      );
    });
  }
}
