import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class MindfulnessMeditation extends StatelessWidget {
  const MindfulnessMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> actions = [
      'Focusing on the present',
      'Observing thoughts ',
      'Sensations without judgement ',
    ];
    return Scaffold(
      appBar: const CustomLeading(title: 'Mindfulness Meditation'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Text(
                    'Mindfulness Meditation',
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