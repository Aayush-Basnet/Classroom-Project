import 'package:flutter/material.dart';

const myColor = Color.fromARGB(176, 138, 229, 236);
var ChapterLists = [
  'Ch 1',
  'Ch 2',
];

class Stat extends StatefulWidget {
  var stat;
  Stat(this.stat);

  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statistics"),
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
                  if (ChapterLists[index] == 1) {
                    print("Chapter 1 pressed");
                  } else if (ChapterLists[index] == 2) {
                    print("Chapter 2 pressed");
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
