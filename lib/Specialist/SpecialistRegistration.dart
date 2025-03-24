import 'package:flutter/material.dart';
import 'package:vhackapp/Component/CustomBox.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';
import 'package:vhackapp/Component/leading.dart';
import 'SpecialistRegistered.dart';

class SpecialistRegistration extends StatelessWidget {
  const SpecialistRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Specialist Settings'),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBox(title: 'Name', promptText: 'Enter your name...'), 
            SizedBox(height: 12), 
            CustomBox(title: 'Specialist Position', promptText: 'Enter your position...'), 
            SizedBox(height: 12), 
            CustomBox(title: 'Registration Number', promptText: 'Enter your registration number...'), 
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Please obtain the registration number from your hospital or clinic. ', 
                style: const TextStyle(
                  color: Colors.red, 
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 12), 
            CustomBox(title: 'Hospital/ Clinic Name', promptText: 'Enter hospital or clinic name...'), 
            SizedBox(height: 12), 
            CustomElevatedButton(
              text: 'Verify', 
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const SpecialistRegistered()),
                );
              })

          ],
        ),
      ),
    );
  }
}