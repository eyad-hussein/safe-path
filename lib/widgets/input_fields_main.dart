import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainInput extends StatelessWidget {
  final TextStyle MainInputStyle =
      TextStyle(color: Color.fromRGBO(181, 181, 181, 1));
  final String hintTxt;
  final String iconPath;

  MainInput(this.hintTxt, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ]),
      child: TextField(
        decoration: InputDecoration(
            icon: SvgPicture.asset(iconPath),
            hintText: hintTxt,
            hintStyle: MainInputStyle,
            border: InputBorder.none),
      ),
    );
  }
}

class SignBtn extends StatelessWidget {
  final String content;
  final Color bgColor;
  final Color borderColor;
  final Function callBack;
  final bool white;

  SignBtn(this.content, this.bgColor, this.borderColor, this.callBack,
      [this.white = true]);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        height: 46,
        child: ElevatedButton(
          onPressed: () => callBack(context),
          child: Text(
            content,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: (white == true)
                  ? Colors.white
                  : Color.fromRGBO(32, 147, 238, 1),
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
