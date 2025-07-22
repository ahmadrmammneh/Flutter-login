import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/utils/validations_metod.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> signup = GlobalKey<FormState>();
  bool isSecured = true;

  bool alreadyRegistered = false;

  @override
  Widget build(BuildContext context) {
    if (alreadyRegistered) {
      Future.microtask(() {
        Navigator.pushNamed(context, '/login');
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
        title: Text("Signup"),
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
          child: Form(
            key: signup,
            child: Column(
              children: [
                SizedBox(height: 40),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://thumbs.dreamstime.com/b/mobile-app-features-talking-head-ai-avatar-interactive-educational-session-engages-users-providing-content-357664846.jpg",
                  ),
                ),
                SizedBox(height: 100),
                TextFormField(
                  controller: fullNameController,
                  validator: (value) => ValidationsMetod.validateName(value),
                  decoration: InputDecoration(
                    hint: Text(
                      "please enter your full name",
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
                TextFormField(
                  controller: emailController,
                  validator: (value) => ValidationsMetod.validateEmail(value),
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
                TextFormField(
                  controller: phoneNumberController,
                  validator: (value) =>
                      ValidationsMetod.validatePhoneNumber(value),
                  decoration: InputDecoration(
                    hint: Text(
                      "please enter your phoneNumber",
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
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) =>
                      ValidationsMetod.validatePassword(value),
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
                      value: alreadyRegistered,
                      onChanged: (value) {
                        setState(() {
                          alreadyRegistered = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "Already Register ? Go To Login Page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                // ✅ زر التسجيل مع التحقق من صحة البريد
                ElevatedButton(
                  onPressed: () {
                    if (signup.currentState!.validate()) {
                      // البريد صحيح ✅
                      print("Email is valid: ${emailController.text}");
                    }
                  },
                  child: Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
