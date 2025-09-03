import 'package:flutter/material.dart';
import 'package:myapploginandsignup/pages/utils/validations_metod.dart';

class Accountvendorpage extends StatefulWidget {
  const Accountvendorpage({super.key});

  @override
  _AccountvendorpageState createState() => _AccountvendorpageState();
}

class _AccountvendorpageState extends State<Accountvendorpage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController(
    text: "Ahmad Rmamneh",
  );
  final TextEditingController shopnameController = TextEditingController(
    text: "Ahmad Store",
  );
  final TextEditingController emailController = TextEditingController(
    text: "ahmad@example.com",
  );
  final TextEditingController phoneNumberController = TextEditingController(
    text: "0791234567",
  );
  final TextEditingController passwordController = TextEditingController(
    text: "123456",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 24, 112, 98),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff3B6C64),
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EditableTextField(
                    controller: nameController,
                    texthint: "Enter your name",
                    validator: (value) => ValidationsMetod.validateName(value),
                  ),
                  SizedBox(height: 12),
                  EditableTextField(
                    controller: shopnameController,
                    texthint: "Enter your shop name",
                    validator: (value) => ValidationsMetod.validateName(value),
                  ),
                  SizedBox(height: 12),
                  EditableTextField(
                    controller: emailController,
                    texthint: "Enter your email",
                    validator: (value) => ValidationsMetod.validateEmail(value),
                  ),
                  SizedBox(height: 12),
                  EditableTextField(
                    controller: phoneNumberController,
                    texthint: "Enter your phone number",
                    validator: (value) =>
                        ValidationsMetod.validatePhoneNumber(value),
                  ),
                  SizedBox(height: 12),
                  EditableTextField(
                    controller: passwordController,
                    texthint: "Enter your password",
                    validator: (value) =>
                        ValidationsMetod.validatePassword(value),
                    obscureText: true,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Information saved")),
                        );
                      }
                    },
                    child: Text("Save Changes"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EditableTextField extends StatefulWidget {
  const EditableTextField({
    super.key,
    required this.controller,
    required this.texthint,
    this.validator,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String texthint;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  State<EditableTextField> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<EditableTextField> {
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUnfocus,
      readOnly: !isEditing,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.texthint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: isEditing ? Colors.white : Colors.grey.shade100,
        suffixIcon: IconButton(
          icon: Icon(isEditing ? Icons.check : Icons.edit),
          onPressed: () {
            setState(() => isEditing = !isEditing);
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
      ),
    );
  }
}
