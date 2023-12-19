import 'package:flutter/material.dart';
import 'package:safe_path/pages/new_post_page.dart';
import '/widgets/custom_card.dart';
import 'dart:math';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

DateTime _randomDate() {
  final random = Random();
  final days = random.nextInt(365 * 5); // Random date within the last 5 years
  return DateTime.now().subtract(Duration(days: days));
}

class ForumPage extends StatelessWidget {
  List<List<dynamic>> dummyList = [
    ['Post 1', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 2', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 3', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 4', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 5', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 6', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 7', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 8', '${Random().nextInt(100)} Replies', _randomDate()],
    ['Post 9', '${Random().nextInt(100)} Replies', _randomDate()],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "images/main_bg.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 0.65 * MediaQuery.of(context).size.width,
                        height: 0.065 * MediaQuery.of(context).size.height,
                        margin: EdgeInsets.only(
                          top: 40,
                          left: 40,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                            0.0325 * MediaQuery.of(context).size.height,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Forum",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 27 / 360 * MediaQuery.of(context).size.width,
                        height: 27 / 800 * MediaQuery.of(context).size.height,
                        margin: EdgeInsets.only(
                          left: 39 / 360 * MediaQuery.of(context).size.width,
                          top: 38 / 800 * MediaQuery.of(context).size.height,
                        ),
                        child: Image.asset("images/x.png"),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 0.8 * MediaQuery.of(context).size.height,
                    width: 0.95 * MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: dummyList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            customCard(
                              Name: dummyList[index][0],
                              NumberOfReplies: dummyList[index][1],
                              Date: dummyList[index][2],
                            ),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 120,
        child: FittedBox(
          child: FloatingActionButton.extended(
            onPressed: () => goToNewPostPage(context),
            backgroundColor: Colors.blue,
            label: const Text('New Post'),
            icon: const Icon(FeatherIcons.feather),
          ),
        ),
      ),
    );
  }

  void goToNewPostPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => newPostPage()),
    );
  }
}
