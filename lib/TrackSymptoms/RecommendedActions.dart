import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class RecommendedActions extends StatelessWidget {
  const RecommendedActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> actions = [
      'Drink plenty of water',
      'Get enough rest',
      'Track temperature every four hours',
      'See a doctor if symptoms worsen or fever persists after two days',
    ];
    return Scaffold(
      appBar: const CustomLeading(title: 'Track Symptoms'),
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