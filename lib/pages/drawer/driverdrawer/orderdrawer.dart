import 'package:flutter/material.dart';
import 'package:myapploginandsignup/widgets/customepost.dart';

class Orderdrawer extends StatefulWidget {
  const Orderdrawer({super.key});

  @override
  State<Orderdrawer> createState() => _OrderdrawerState();
}

class _OrderdrawerState extends State<Orderdrawer> {
  Widget _buildTab(String text) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xff3B6C64),
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: GestureDetector(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          // الصف العلوي
          Row(
            children: [
              _buildTab("Current Order"),
              Container(width: 1.5, height: 50, color: Colors.grey.shade300),
              _buildTab("Delivered Order"),
            ],
          ),

          // قائمة الطلبات
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Customepost(bio: "This order you deliver number $index");
              },
            ),
          ),
        ],
      ),
    );
  }
}
