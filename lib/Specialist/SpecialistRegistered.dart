import 'package:flutter/material.dart';
import 'package:vhackapp/Component/ProfileBox.dart';
import 'package:vhackapp/Component/leading.dart';

class SpecialistRegistered extends StatelessWidget {
  const SpecialistRegistered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Specialist Settings'),
      body:  Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileBox(title: 'Name', value: 'Name...'), 
            SizedBox(height: 12), 
            ProfileBox(title: 'Specialist Position', value: 'Position...'), 
            SizedBox(height: 12), 
            ProfileBox(title: 'Registration Number', value: 'ID...'), 
            SizedBox(height: 12), 
            ProfileBox(title: 'Hospital/ Clinic Name', value: 'Hospital...'), 
            SizedBox(height: 12), 
            

          ],
        ),
      ),
    );
  }
}