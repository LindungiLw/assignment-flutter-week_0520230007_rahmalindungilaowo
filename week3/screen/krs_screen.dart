import 'package:flutter/material.dart';

class KrsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KRS",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
      )),
      body: Center(
        child: ElevatedButton(
          child: Text("Back",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}