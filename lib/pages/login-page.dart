import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSecured = true;
  bool dontHaveAccount = false;

  @override
  Widget build(BuildContext context) {
    if (dontHaveAccount) {
      Future.microtask(() {
        Navigator.pushNamed(context, '/signup');
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 63, 97, 109),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/mobile-app-features-talking-head-ai-avatar-interactive-educational-session-engages-users-providing-content-357664846.jpg",
                ),
              ),
              SizedBox(width: double.infinity, height: 120),
              TextField(
                decoration: InputDecoration(
                  hint: Text(
                    "please enter your email",
                    style: TextStyle(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),

              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hint: Text(
                    "please enter your password",
                    style: TextStyle(color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isSecured = !isSecured;
                      });
                    },
                    icon: Icon(
                      isSecured ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: dontHaveAccount,
                    onChanged: (value) {
                      setState(() {
                        dontHaveAccount = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      "dont have account go to signe up page",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
