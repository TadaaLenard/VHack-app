import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';
import 'package:vhackapp/TrackSymptoms/RecommendedActions.dart';
import 'package:vhackapp/TrackSymptoms/SymptomsHistory.dart';

class TrackSymptoms extends StatefulWidget {
  const TrackSymptoms({super.key});

  @override
  _TrackSymptomsState createState() => _TrackSymptomsState();
}

class _TrackSymptomsState extends State<TrackSymptoms> {
  final List<String> symptoms = [];
  final TextEditingController _symptomController = TextEditingController();

  void _addSymptom(String symptom) {
    if (symptom.isNotEmpty) {
      setState(() {
        symptoms.add(symptom);
        _symptomController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Track Symptoms'),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomElevatedButton(
                text: 'History',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SymptomsHistory()),
                  );
                },
              ),
              SizedBox(height: 16),
              
               Container(
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
                    // Dynamic title
                    Text(
                      'Symptoms',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),

                    // Dynamic prompt text
                    TextField(
                      controller: _symptomController,
                      decoration: InputDecoration(
                        hintText: 'Enter a symptom...',
                        border: InputBorder.none,

                      ),
                      
                      onSubmitted: _addSymptom,
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.transparent),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: symptoms.map((symptom) => Text("- $symptom", style: TextStyle(fontSize: 16))).toList(),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: CustomElevatedButton(
                  text: 'Recommendation',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RecommendedActions()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
      
    );
  }
}
