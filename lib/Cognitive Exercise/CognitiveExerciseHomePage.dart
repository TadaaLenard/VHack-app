import 'package:flutter/material.dart';
import 'package:vhackapp/Cognitive%20Exercise/Sudoku.dart';
import 'package:vhackapp/Component/leading.dart';
import 'Sudoku.dart';
import 'package:vhackapp/Component/FeatureBox.dart';

class CognitiveExerciseHomePage extends StatelessWidget {
  const CognitiveExerciseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Cognitive Exercise'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            FeatureBox(
              text: "Sudoku",
              destination: const Sudoku(), // Pass destination
            ),
            
          ],
        ),
      ),
    );
  }
}

