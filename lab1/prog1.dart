import 'package:flutter/material.dart';

void main() => runApp(TexDisplay());

class TexDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First Flutter Application',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Add your onPressed logic here
                print('Settings button pressed');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'MENU Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Add navigation logic here
                  Navigator.pop(context); // Closes the drawer
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Add navigation logic here
                  Navigator.pop(context); // Closes the drawer
                },
              ),
              // Add more ListTile widgets for additional items as needed
            ],
          ),
        ),
        body: Center(
          child: Text(
            'Hello world, welcome',
            style: TextStyle(fontSize: 18),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          child: Text(
            'Copyright@csse class 2024',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
