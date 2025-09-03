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
        backgroundColor: Color.fromARGB(255, 24, 112, 98),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Color(0xff3B6C64)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/png/8801434.png"),
              ),
              SizedBox(height: 120),
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
                obscureText: isSecured,
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

                      if (value == true) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Select Account Type'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                        context,
                                        '/signup-driver',
                                      );
                                    },
                                    icon: Icon(
                                      Icons.directions_car,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Driver',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff3B6C64),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                        context,
                                        '/signup-vendor',
                                      );
                                    },
                                    icon: Icon(
                                      Icons.store,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Vendor',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff3B6C64),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Don't have account? Go to signup page",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // تنفيذ عملية تسجيل الدخول هنا
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
