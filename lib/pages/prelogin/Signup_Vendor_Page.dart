import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/utils/validations_metod.dart';

class SignupVendorPage extends StatefulWidget {
  @override
  _SignupVendorPageState createState() => _SignupVendorPageState();
}

class _SignupVendorPageState extends State<SignupVendorPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();

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
        title: Text("SignupVendorPage"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 24, 112, 98),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Color(0xff3B6C64)),

        child: SingleChildScrollView(
          child: Form(
            key: signup,
            child: Column(
              children: [
                SizedBox(height: 40),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/png/8801434.png"),
                ),
                SizedBox(height: 100),
                TextFormField(
                  controller: fullNameController,
                  validator: (value) => ValidationsMetod.validateName(value),
                  autovalidateMode: AutovalidateMode.onUnfocus,
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
                  controller: shopNameController,
                  validator: (value) => ValidationsMetod.validateName(value),
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  decoration: InputDecoration(
                    hint: Text(
                      "please enter your Shop Name",
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
                  autovalidateMode: AutovalidateMode.onUnfocus,
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
                  autovalidateMode: AutovalidateMode.onUnfocus,
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
                  autovalidateMode: AutovalidateMode.onUnfocus,
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
                    Navigator.pushReplacementNamed(context, '/vendorhome');
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
