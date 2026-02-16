import 'package:flutter/material.dart';
import 'krs_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue.shade100,
              child: Icon(Icons.person, size: 80, color: Colors.blue),
            ),
            SizedBox(height: 20),

            Text(
              "Rahma Lindungi Laowo",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "Mahasiswa Sistem Informasi",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KrsScreen()),
                );
              },
              icon: Icon(Icons.school),
              label: Text("Lihat Kartu Rencana Studi (KRS)"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}