import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const Text('SHADRACK',
                style: TextStyle(color: Colors.white, fontSize: 30.0)),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),

            SizedBox(
              height: 30.0,
              width: 180.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+233 266362783',
                  style: TextStyle(color: Colors.teal.shade700, fontSize: 20.0),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              color: Colors.white,
              child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'shadrack@gmail.com',
                    style: TextStyle(color: Colors.teal.shade700),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
