import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class customCard extends StatelessWidget {
  final String Name;
  final String NumberOfReplies;
  final DateTime Date;

  customCard(
      {required this.Name, required this.NumberOfReplies, required this.Date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301 / 360 * MediaQuery.of(context).size.width,
      height: 120 / 800 * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(children: [
            Container(
              width: 70 / 360 * MediaQuery.of(context).size.width,
              height: 70 / 800 * MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
            Container(
              width: 70 / 360 * MediaQuery.of(context).size.width,
              height: 70 / 800 * MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/pavan3841.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ]),
          SizedBox(width: 10 / 360 * MediaQuery.of(context).size.width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 84 / 360 * MediaQuery.of(context).size.width,
                height: 23 / 800 * MediaQuery.of(context).size.height,
                child: Text(
                  Name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 59 / 800 * MediaQuery.of(context).size.height),
              Container(
                width: 60,
                height: 20 / 800 * MediaQuery.of(context).size.height,
                child: Text(
                  NumberOfReplies,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 70 / 360 * MediaQuery.of(context).size.width,
          ),
          Container(
            padding: EdgeInsets.only(
                top: 90 / 800 * MediaQuery.of(context).size.height),
            child: Text(
              DateFormat('yyyy-MM-dd – kk:mm').format(Date),
              style: TextStyle(fontSize: 7, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
