import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'ThreeWordsAheadResult.dart';
import 'package:vhackapp/Component/CustomBox.dart';
import 'package:vhackapp/Component/navbutton.dart';

class ThreeWordsAhead extends StatelessWidget {
  const ThreeWordsAhead({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: '3 Words Ahead'),
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Highest Streak: 10 words',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20), 

            Align(
              alignment: Alignment.center,
              child: Text(
                'Elephant',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            CustomBox(
              title: "Last 3rd word",
              promptText: "Enter the 3rd word before...",
            ),

            const SizedBox(height: 20),
            
            Center(
              child: NavigationButton(
                text: 'Next',
                destination: ThreeWordsAheadResult(),
              )
            ),
          ],
        ),
      ),
    );
  }
}



