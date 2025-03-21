import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final double? width;
  final String text;
  final Widget? destination;

  const NavigationButton({
    super.key,
    this.width,
    required this.text,
    this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: () {
          if (destination != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination!),
            );
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color(0xFF10451D),
              width: 3,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFF10451D),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
