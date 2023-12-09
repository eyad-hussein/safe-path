import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAvatar extends StatefulWidget {
  final String content;
  final String avatar;
  final Function callBack;

  MainAvatar(this.content, this.avatar, this.callBack);

  @override
  State<MainAvatar> createState() => _MainAvatarState();
}

class _MainAvatarState extends State<MainAvatar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              widget.content.toUpperCase(),
              style: TextStyle(
                  color: Color.fromRGBO(32, 147, 238, 1),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 168,
              width: 168,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Colors.black.withOpacity(0),
                  ),
                  onPressed: () => widget.callBack(),
                  child: SvgPicture.asset(
                    widget.avatar,
                    height: 200,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
