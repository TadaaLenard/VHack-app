import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart'; 
import 'MemoryRetentionHomePage.dart';

class ThreeWordsAheadResult extends StatelessWidget {
  const ThreeWordsAheadResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: '3 Words Ahead'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 24), 
            child: Text(
              'You have achieved\n 4 streaks \nin this game.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 32), 
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MemoryRetentionHomePage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: const Text(
                'Return',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
