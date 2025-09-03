import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/drawer/driverdrawer/orderdrawer.dart';
import 'package:myapploginandsignup/widgets/customepost.dart';

class Driverhome extends StatefulWidget {
  const Driverhome({super.key});

  @override
  _DriverhomeState createState() => _DriverhomeState();
}

class _DriverhomeState extends State<Driverhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/png/8801434.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text("ahmad"),
                      subtitle: Text("Ahmad@gmail.com"),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text("Home page"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),

              ListTile(
                title: Text("Account Driver"),
                leading: Icon(Icons.account_balance_rounded),
                onTap: () {
                  Navigator.pushNamed(context, '/account-driver');
                },
              ),

              ListTile(
                title: Text("My Order"),
                leading: Icon(Icons.check_box),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Orderdrawer()),
                  );
                },
              ),

              ListTile(
                title: Text("About Us"),
                leading: Icon(Icons.help),
                onTap: () {},
              ),

              ListTile(
                title: Text("Contact Us"),
                leading: Icon(Icons.phone_android_outlined),
                onTap: () {},
              ),

              ListTile(
                title: Text("SignOut"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Available Order", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 24, 112, 98),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Customepost(bio: "this is post number $index");
          },
        ),
      ),
    );
  }
}
