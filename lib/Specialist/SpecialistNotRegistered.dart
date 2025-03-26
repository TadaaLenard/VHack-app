import 'package:flutter/material.dart';
import 'package:vhackapp/Component/HomePageLeading.dart';
import 'SpecialistRegistration.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';

class SpecialistNotRegistered extends StatelessWidget {
  const SpecialistNotRegistered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageLeading(title: 'Specialist Settings'),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You are not registered as a specialist user. ',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,

              ), 
              SizedBox(height: 16,), 

              CustomElevatedButton(
                text: 'Register', 
                onPressed: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SpecialistRegistration()),
                      );
                }),
            ],
          )
        ),
      ),
    );
  }
}