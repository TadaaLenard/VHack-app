import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Button background color
        foregroundColor: const Color(0xFF10451D), // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
          side: const BorderSide(
            color: Color(0xFF10451D), // Border color
            width: 3, // Border thickness
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Button padding
        elevation: 5, // Shadow effect
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          
        ),
      ),
    );
  }
}
