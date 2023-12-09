import 'package:flutter/material.dart';
import 'package:safe_path/pages/fourm_page.dart';
import 'package:safe_path/pages/precautions_page.dart';

class newPostPage extends StatefulWidget {
  @override
  State<newPostPage> createState() => _newPostPageState();
}

class _newPostPageState extends State<newPostPage> {
  final TextEditingController _controller = TextEditingController();
  int _currentLength = 0;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentLength = _controller.text.length;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:()=>Navigator.pop(context),
              child: Text(
                '< Previous',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Post',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap:()=>goToForumPage(context),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(

        children: [Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20 / 800 * MediaQuery.of(context).size.height,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Post Title: ",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: TextField(
                controller: _controller,
                maxLength: 150,
                decoration: InputDecoration(
                  hintText: 'Type Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Character Limit: ${_currentLength} / 150",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(height: 15/800*MediaQuery.of(context).size.height,),
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Details: ",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200/800*MediaQuery.of(context).size.height,
                //padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintText: 'Type Here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15/800*MediaQuery.of(context).size.height,),
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Keywords: ",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:1/80*MediaQuery.of(context).size.height),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: TextField(
                controller: _controller,
                maxLength: 150,
                decoration: InputDecoration(
                  hintText: 'Type Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                ),
              ),
            ),
          ],
        ),
      ],),
    );
  }

  void goToForumPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => precautionsPage()),
    );
  }
}
