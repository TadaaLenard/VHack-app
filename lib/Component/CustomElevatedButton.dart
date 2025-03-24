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
        backgroundColor: Colors.white, 
        foregroundColor: const Color(0xFF10451D), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
          side: const BorderSide(
            color: Color(0xFF10451D), 
            width: 3, 
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), 
        elevation: 5, 
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
