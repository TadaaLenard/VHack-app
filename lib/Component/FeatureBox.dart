import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final String text;
  final Widget destination; 

  const FeatureBox({super.key, required this.text, required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        width: 358, 
        height: 110, 
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 8), 
        decoration: BoxDecoration(
          color: const Color(0xFFB7EFC5), 
          borderRadius: BorderRadius.circular(16), 
        ),
        alignment: Alignment.center,
        child: Align(
          alignment: Alignment.bottomLeft, 
          child: Padding(
            padding: const EdgeInsets.all(12.0), 
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
      ),
    );
  }
}
