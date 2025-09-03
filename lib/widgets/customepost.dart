import 'package:flutter/material.dart';

class Customepost extends StatelessWidget {
  const Customepost({super.key, required this.bio});
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 8, // Shadow effect
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              GestureDetector(
                child: Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),

              const SizedBox(height: 20),

              Image.asset(
                "assets/png/8801434.png",
                height: 200,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              // Full-width button inside a Container
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text('Accept Job'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
