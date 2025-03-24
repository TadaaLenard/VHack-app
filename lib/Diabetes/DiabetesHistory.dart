import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/ProfileBox.dart';

class DiabetesHistory extends StatelessWidget {
  const DiabetesHistory({super.key});

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
              Container(
                width: double.infinity,
                height: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                
                child: Text(
                  'Display Glucose Level Graphs', 
                  textAlign: TextAlign.center,
                ),
              ), 
              SizedBox(height: 16,),
              const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
              SizedBox(height: 16,),
              ProfileBox(title: 'Yesterday', value: '7.8 mmol/L'),
              SizedBox(height: 16), 
              ProfileBox(title: '18/3/2025', value: '10.3 mmol/L'),
            ],
          ), 
        )
      ),
    );
  }
}