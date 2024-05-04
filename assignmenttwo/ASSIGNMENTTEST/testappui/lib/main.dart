import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
            ),
            Image.network('https://via.placeholder.com/350', height: 200, fit: BoxFit.cover),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Tex Mex BBQ'),
              trailing: Icon(Icons.favorite_border),
            ),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Twin Burger'),
              trailing: Icon(Icons.favorite_border),
            ),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Pasta Marinara'),
              trailing: Icon(Icons.favorite_border),
            ),
            ListTile(
              leading: Image.network('https://via.placeholder.com/50'),
              title: Text('Tex Mex BBQ'),
              trailing: Icon(Icons.favorite_border),
            ),
          ],
        ),
      ),
    );
  }
}
