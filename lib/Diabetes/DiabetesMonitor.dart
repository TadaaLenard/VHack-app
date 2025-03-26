import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';
import 'package:vhackapp/Component/CustomBox.dart';
import 'package:vhackapp/Diabetes/DiabetesHistory.dart';
import 'package:vhackapp/Diabetes/DiabetesRecommendation.dart';


class DiabetesMonitor extends StatelessWidget {
  const DiabetesMonitor({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomLeading(title: 'Diabetes Monitor'),
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
                    MaterialPageRoute(builder: (context) => const DiabetesHistory()),
                  );
                },
              ),
              SizedBox(height: 16),
              
              CustomBox(title: 'Glucose Levels', promptText: 'Enter your blood glucose level...'),
              
              SizedBox(height: 16),
              Center(
                child: CustomElevatedButton(
                  text: 'Save', 
                  onPressed: () {
                    print('Save button pressed. ');
                  },
                ),
              ), 

              SizedBox(height: 256,), 
              Center(
                child: CustomElevatedButton(
                  text: 'Recommendation', 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DiabetesRecommendation()),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}

