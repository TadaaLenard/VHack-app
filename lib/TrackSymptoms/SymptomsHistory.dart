import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class SymptomsHistory extends StatelessWidget {
  const SymptomsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'History'),
      body: Expanded(
        child: Padding(
          padding:EdgeInsets.all(16), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HistoryBox(
                date: 'Yesterday', 
                symptoms: [
                  'High body temperature', 
                  'Chills', 
                  'Fatigue', 
                  'Loss of appetite',
                ],
                condition: 'Common fever'
              ), 
              SizedBox(height: 16), 
              HistoryBox(
                date: '18/3/2025', 
                symptoms: [
                  'Runny nose',  
                  'Fatigue', 
                  'Headache',
                ],
                condition: 'Flu'
              )
            ],
          ), 
        )
      ),
    );
  }
}

class HistoryBox extends StatelessWidget {
  final String date;
  final List<String> symptoms;
  final String condition;

  const HistoryBox({
    super.key,
    required this.date,
    required this.symptoms,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: symptoms.map((symptom) {
              return Row(
                children: [
                  const Icon(Icons.fiber_manual_record, size: 12),
                  const SizedBox(width: 4),
                  Text(symptom, style: const TextStyle(fontSize: 16)),
                ],
              );
            }).toList(),
          ),

          const SizedBox(height: 8),

          Text(
            'Condition: $condition',
            style: const TextStyle(fontSize: 16, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
