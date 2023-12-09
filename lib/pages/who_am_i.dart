import 'package:flutter/material.dart';
import '../widgets/avatars.dart';
import './login_page.dart';

class WhoAmI extends StatefulWidget {
  const WhoAmI({super.key});

  @override
  State<WhoAmI> createState() => _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {
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
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(32, 147, 238, 1),
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        height: 63,
                        width: 190,
                        child: Center(
                          child: Text("Sign As",
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  MainAvatar("Parent", "images/parent.svg", openDialog),
                  SizedBox(
                    height: 40,
                  ),
                  MainAvatar("Child", "images/child.svg", openDialog),
                  Spacer(
                    flex: 2,
                  )
                ],
              )
            ],
          ),
        ));
  }

  void openDialog() async {
    String? _selected =
        await Navigator.of(context).push(MaterialPageRoute<String>(
            builder: (BuildContext context) {
              return LoginPage();
            },
            fullscreenDialog: true));
    if (_selected != null)
      setState(() {
        _selected = _selected;
      });
  }
}
