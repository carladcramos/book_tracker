import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile()
  ));
}
class Profile extends StatelessWidget {
  const Profile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Tracker'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Centered "User Profile" title
            Center(
              child: Text(
                'User Profile',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Centered Icon
            Center(
              child: Icon(
                Icons.person,
                size: 90,
                color: Colors.lightBlue,
              ),
            ),
            SizedBox(height: 24),

            // Name
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Carla D. Ramos'),
                ],
              ),
            ),

            // Email
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('22-12953@g.batstate-u.edu.ph'),
                ],
              ),
            ),

            // Company
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Company:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Batangas State University TNEU Balayan'),
                ],
              ),
            ),

            // Contact No.
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact No.:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('09655239512'),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}