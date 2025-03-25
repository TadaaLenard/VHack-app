import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Vaccines/SmartSearchResult.dart';

class SmartSearchType extends StatelessWidget {
  const SmartSearchType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Smart Search'),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              VaccineBox(title: 'Recent Diseases', promptText: 'Search for popular vaccine...', destination: SmartSearchResult(),), 
              SizedBox(height: 12,),
              VaccineBox(title: 'Vaccines for Travels', promptText: 'Enter destination...', destination: SmartSearchResult(),), 
              SizedBox(height: 12,), 
              VaccineBox(title: 'Vaccine for Jobs', promptText: 'Enter jobs...', destination: SmartSearchResult(),)
            ],
          ),
        ),
      ),
    );
  }
}

class VaccineBox extends StatelessWidget {
  final String title;
  final String promptText;
  final Widget destination;

  // Constructor to initialize values
  const VaccineBox({super.key, required this.title, required this.promptText, required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
      },

      child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0), // Sharp corner
          topRight: Radius.circular(20), // Rounded corner
          bottomLeft: Radius.circular(20), // Rounded corner
          bottomRight: Radius.circular(20), // Rounded corner
        ), 
        border: Border.all(color: Color(0xFF10451D), width: 3)
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),

            TextField(
              decoration: InputDecoration(
                hintText: promptText,
                hintStyle: const TextStyle(color: Colors.black54),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}