import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('images/patrick.png'),
            ),
            Text(
              'Patrick Bateman',
              style: TextStyle(
                fontFamily: 'Copperplate Gothic',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'VICE PRESIDENT',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.red.shade900,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.red.shade900,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red.shade900,
                  ),
                  title: Text(
                    '212 555 6342',
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.map,
                    color: Colors.red.shade900,
                  ),
                  title: Text(
                    '358 Exchange Place New York',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red.shade900,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
