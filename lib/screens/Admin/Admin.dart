import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('List'),
          ],
        ),
      ),
    );
  }
}
