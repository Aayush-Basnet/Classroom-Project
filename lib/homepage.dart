import 'package:_classroom/subject/discrete.dart';
import 'package:_classroom/subject/mathematics.dart';
import 'package:_classroom/subject/microprocessor.dart';
import 'package:_classroom/subject/oop.dart';
import 'package:_classroom/subject/stat.dart';
import 'package:flutter/material.dart';

var subjectList = [
  'OOP',
  'Mathematics',
  '  Discrete Structure  ',
  'Microprocessor',
  'Statistics'
];

class Homepage extends StatefulWidget {
  var username;
  Homepage(this.username);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ClassRoom",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(228, 20, 234, 234),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Aayush Basnet"),
              accountEmail: Text("aayushbasnet@gmail.com")),
          ListTile(
            title: Text(
              'Classes',
            ),

            //subtitle: Text('Classes'),
            leading: Icon(Icons.home),
            onTap: () {
              print("Classes");
            },
          ),
          ListTile(
            title: Text('Portfolio'),
            subtitle: Text('Assigenment Portfolio'),
            leading: Icon(Icons.assignment),
            onTap: () {
              print("Assignment Submitted");
            },
          ),
          ListTile(
            title: Text('Notification'),
            //subtitle: Text('Notification'),
            leading: Icon(Icons.notifications),
            // trailing: Icon(Icons.numbers),
            onTap: () {
              print("Notification");
            },
          ),
          ListTile(
            title: Text('Report'),
            subtitle: Text('Report Item'),
            leading: Icon(Icons.report),
            onTap: () {
              print("Report pressed");
            },
          ),
          ListTile(
            title: Text('User'),
            subtitle: Text('User Detail'),
            leading: Icon(Icons.supervised_user_circle),
            onTap: () {
              print("User pressed");
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            // subtitle: Text('Log out'),
            leading: Icon(Icons.settings),
            onTap: () {
              print("Settings");
            },
          ),
          ListTile(
            title: Text(
              'Sign out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Log out'),
            leading: Icon(Icons.logout),
            onTap: () {
              print("Logged out");
            },
          ),
          ListTile(
            title: Text(
              'Help',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.help),
            onTap: () {
              print("Help");
            },
          ),
        ],
      )),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: subjectList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (() {
                    if (subjectList[index] == "OOP") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OOP(1)),
                      );
                    } else if (subjectList[index] == "Mathematics") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mathematics(2)),
                      );
                    } else if (subjectList[index] == "  Discrete Structure  ") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MicroProcessor(3)),
                      );
                    } else if (subjectList[index] == "Microprocessor") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Discreate(4)),
                      );
                    } else if (subjectList[index] == "Statistics") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stat(5)),
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
                          Icons.subject,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          subjectList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
