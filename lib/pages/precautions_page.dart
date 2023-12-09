import 'dart:math';

import 'package:flutter/material.dart';
import 'package:safe_path/widgets/curvy_appbar.dart';
import 'package:safe_path/widgets/precautions_card.dart';


class precautionsPage extends StatelessWidget {
  List<Map<String, String>> precautions = [
    {
      'title': 'Wash your hands frequently',
      'image': 'images/img1.png',
    },
    {
      'title': 'Wear a mask in public settings',
      'image': 'images/img2.png',
    },
    {
      'title': 'Avoid close contact with sick people',
      'image': 'images/img3.png',
    },
    {
      'title': 'Stay home if you feel unwell',
      'image': 'images/img4.png',
    },
    {
      'title': 'Wash your hands frequently',
      'image': 'images/img1.png',
    },
    {
      'title': 'Wear a mask in public settings',
      'image': 'images/img2.png',
    },
    {
      'title': 'Avoid close contact with sick people',
      'image': 'images/img3.png',
    },
    {
      'title': 'Stay home if you feel unwell',
      'image': 'images/img4.png',
    },
    {
      'title': 'Wash your hands frequently',
      'image': 'images/img1.png',
    },
    {
      'title': 'Wear a mask in public settings',
      'image': 'images/img2.png',
    },
    {
      'title': 'Avoid close contact with sick people',
      'image': 'images/img3.png',
    },
    {
      'title': 'Stay home if you feel unwell',
      'image': 'images/img4.png',
    },
  ];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvyAppBar(),
      body: Container(
        height: 0.9*MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: precautions.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                PrecautionsCard(
                  imagePath: precautions[index]['image']!,
                  text: precautions[index]['title']!,
                ),
                SizedBox(height: 10,)
              ],
            );
          },
        ),
      ),

    );
  }
}
