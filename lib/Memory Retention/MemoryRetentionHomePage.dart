import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class MemoryRetentionHomePage extends StatelessWidget {
  const MemoryRetentionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Memory Retention'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            RectangleBox(text: "3 Words Ahead Games"),
            SizedBox(height: 16),
            
          ],
        ),
      ),
    );
  }
}

class RectangleBox extends StatelessWidget {
  final String text;
  const RectangleBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358, 
      height: 110, 
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 8), // Adds margin
      decoration: BoxDecoration(
        color: const Color(0xFFB7EFC5),
        borderRadius: BorderRadius.circular(16), 
      ),
      alignment: Alignment.center,
      child: Align(
      alignment: Alignment.bottomLeft, // Aligns text to the bottom left
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Adds padding from the edges
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black, 
            fontSize: 18, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    );
  }
}
