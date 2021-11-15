// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: studentCard(),
  ));
}

class studentCard extends StatefulWidget {
  const studentCard({Key? key}) : super(key: key);

  @override
  State<studentCard> createState() => _studentCardState();
}

class _studentCardState extends State<studentCard> {


int sem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.more_vert),
          SizedBox(
            width: 20.0,
          )
        ],
        title: Text('Student Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          sem +=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assests/nitplogo.png'),
                    radius: 40.0,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text('National Institute of Technology, Patna',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),)
              ],
            ),
            Divider(
              height: 50.0,
              color: Colors.black,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assests/user.png'),
                radius: 50.0,
              ),
            ),
            Divider(height: 20.0,),
            Text(
              'Name:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Shivani Gupta',
              style: TextStyle(
                  color: Colors.indigo[400],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'Branch:',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Electronics and Communication Engineering',
              style: TextStyle(
                  color: Colors.indigo[400],
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'Semester',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$sem',
              style: TextStyle(
                  color: Colors.indigo[400],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'shivanig.ug20.ece@nitp.ac.in',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}