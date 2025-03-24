import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart'; 
import 'MemoryRetentionHomePage.dart';
import 'package:vhackapp/Component/navbutton.dart';

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
          
          const Center(
            child: NavigationButton(
              text: 'Return',
              destination: MemoryRetentionHomePage(),
          ))
        ],
      ),
    );
  }
}
