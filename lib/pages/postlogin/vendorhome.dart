import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/drawer/vendordrawer/accountpage.dart';

class VendorHome extends StatefulWidget {
  const VendorHome({super.key});

  @override
  _VendorHomeState createState() => _VendorHomeState();
}

class _VendorHomeState extends State<VendorHome> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController dropoffController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 24, 112, 98)),
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
                title: Text("Account"),
                leading: Icon(Icons.account_balance_rounded),
                onTap: () {
                  Navigator.pushNamed(context, '/account-vendor');
                },
              ),

              ListTile(
                title: Text("Order"),
                leading: Icon(Icons.check_box),
                onTap: () {},
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
      body: Container(
        color: Color(0xff3B6C64),

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Form(
            key: _formKey,

            child: ListView(
              children: [
                buildTextField(titleController, "العنوان"),
                buildTextField(descriptionController, "الوصف"),
                buildTextField(pickupController, "موقع الاستلام"),
                buildTextField(dropoffController, "موقع التوصيل"),
                buildTextField(priceController, "السعر", isNumber: true),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Title: ${titleController.text}");
                      print("Description: ${descriptionController.text}");
                      print("Pickup: ${pickupController.text}");
                      print("Dropoff: ${dropoffController.text}");
                      print("Price: ${priceController.text}");

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('تم إرسال الطلب بنجاح!')),
                      );
                    }
                  },
                  child: Text("إرسال الطلب"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    TextEditingController controller,
    String label, {
    bool isNumber = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: TextFormField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.white,
        ),

        validator: (value) =>
            value == null || value.isEmpty ? 'يرجى إدخال $label' : null,
      ),
    );
  }
}
