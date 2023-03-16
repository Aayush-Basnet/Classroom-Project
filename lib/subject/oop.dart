import 'package:_classroom/subjectpage/ooppage.dart';
import 'package:flutter/material.dart';

const myColor = Color.fromARGB(156, 125, 119, 205);
var ChapterLists = [
  'Ch 1',
  'Ch 2',
];

class OOP extends StatefulWidget {
  var oop;
  OOP(this.oop);

  @override
  State<OOP> createState() => _OOPState();
}

class _OOPState extends State<OOP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OOP"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: ChapterLists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (() {
                  if (ChapterLists[index] == "Ch 1") {
                    // print("Chapter 1 pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ooppage(1)),
                    );
                  } else if (ChapterLists[index] == "Ch 2") {
                    // print("Chapter 2 pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ooppage(2)),
                    );
                  }
                }),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.book,
                        size: 25,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(ChapterLists[index]),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
