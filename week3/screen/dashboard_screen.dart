import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome on Portal KRS",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Check My Profile",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}