import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Mental%20Health%20Support/BreathingExercise.dart';
import 'package:vhackapp/Mental%20Health%20Support/MindfulnessMeditation.dart';
import 'package:vhackapp/Component/FeatureBox.dart';

class MentalHealthSupport extends StatelessWidget {
  const MentalHealthSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Mental Health Support'),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                FeatureBox(
                  text: "Deep Breathing",
                  destination: const BreathingExercise(), // Pass destination
                ),
                SizedBox(height: 8,),
                FeatureBox(
                  text: "Mindfulness Meditation",
                  destination: const MindfulnessMeditation(), // Pass destination
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

