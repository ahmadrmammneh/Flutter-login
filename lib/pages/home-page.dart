import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/signup-page.dart';
import 'package:myapploginandsignup/pages/login-page.dart';

class HomePage extends StatelessWidget {
  final double avatarRadius = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Application",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF203A43),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
            child: Column(
              children: [
                CircleAvatar(
                  radius: avatarRadius,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/premium-vector/man-character_665280-46970.jpg",
                  ),
                ),
                SizedBox(height: 100),
                Text(
                  "Sign up and Login App",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: 1.3,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      backgroundColor: Color(0xFF0F2027),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      backgroundColor: Color(0xFF0F2027),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
