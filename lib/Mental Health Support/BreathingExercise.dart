import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class BreathingExercise extends StatelessWidget {
  const BreathingExercise({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> actions = [
      'Breathe in through your nose. Let your belly fill with air. ',
      'Breathe out through your nose. ',
      'Take three more full deep breaths. ',
      'Breathe fully into your belly as it rises and falls with your breath. ',
    ];
    return Scaffold(
      appBar: const CustomLeading(title: 'Breathing Exercise'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Text(
                    'Deep Breathing',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: actions.map((action) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.fiber_manual_record, size: 12),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              action,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}