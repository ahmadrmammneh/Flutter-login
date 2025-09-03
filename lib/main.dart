import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/drawer/driverdrawer/accountpage.dart';
import 'package:myapploginandsignup/pages/drawer/vendordrawer/accountpage.dart';
import 'package:myapploginandsignup/pages/postlogin/driverhome.dart';
import 'package:myapploginandsignup/pages/postlogin/vendorhome.dart';
import 'package:myapploginandsignup/pages/prelogin/Signup_Vendor_Page.dart';
import 'package:myapploginandsignup/pages/prelogin/home-page.dart';
import 'package:myapploginandsignup/pages/prelogin/Signup_Driver_Page.dart';
import 'package:myapploginandsignup/pages/prelogin/login-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login and sign up app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Raleway"),
      initialRoute: '/',

      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup-driver': (context) => SignupDriverPage(),
        //'/signup-vendor': (context) => SignupVendorPage(),
        '/signup-vendor': (context) => VendorHome(),
        '/account-vendor': (context) => Accountvendorpage(),
        //'/signup-driver': (context) => Driverhome(),
        '/account-driver': (context) => Accountdriverpage(),
      },
    );
  }
}
