import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title;
  final String promptText;

  // Constructor to initialize values
  const CustomBox({super.key, required this.title, required this.promptText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Dynamic title
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),

          // Dynamic prompt text
          TextField(
            decoration: InputDecoration(
              hintText: promptText,
              hintStyle: const TextStyle(color: Colors.black54),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
