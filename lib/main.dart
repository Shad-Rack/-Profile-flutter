import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //Stretch: to open the container from left to right, letting it toch both sides
            //To move all the container to the right side; create an invisible container and make it with infinity (eg. with: doble.infinity) and set mainaxisalignment to "end" attribute
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            Text('SHADRACK',
                style: TextStyle(color: Colors.white, fontSize: 30.0)),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '+233 266362783',
                    style:
                        TextStyle(color: Colors.teal.shade700, fontSize: 20.0),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'shadrackkoufie23@gmail.com',
                    style: TextStyle(color: Colors.teal.shade700),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
