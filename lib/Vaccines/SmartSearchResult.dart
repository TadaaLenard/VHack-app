import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class SmartSearchResult extends StatelessWidget {
  const SmartSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Smart Search'),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0), // Sharp corner
                topRight: Radius.circular(20), // Rounded corner
                bottomLeft: Radius.circular(20), // Rounded corner
                bottomRight: Radius.circular(20), // Rounded corner
              ), 
              border: Border.all(color: Color(0xFF10451D), width: 3)
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      'You should take this vaccine...',
                      style: TextStyle(
                        color: Color(0xFF10451D), 
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}