import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class DiabetesRecommendation extends StatelessWidget {
  const DiabetesRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> actions = [
      'Regular physical activity',
      'Focus on a balanced diet',
      'Regular monitoring of blood glucose levels',
      'Adhere to any prescribed medications',
    ];
    return Scaffold(
      appBar: const CustomLeading(title: 'Diabetes Monitor'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Text(
                    'Recommended Actions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
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