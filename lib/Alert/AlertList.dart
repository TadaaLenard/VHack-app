import 'package:flutter/material.dart';
import 'package:vhackapp/Alert/AddAlert.dart';
import 'package:vhackapp/Component/leading.dart';

class AlertList extends StatelessWidget {
  const AlertList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Alert'),
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Medication', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 24,
                ),
              ), 
              const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.transparent),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(height: 120,),
              Text(
                'Check-ups', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 24,
                ),
              ), 
              const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.transparent),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ],
          ),
        ),
      ),

     floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddAlert()),
        );
        },
        backgroundColor: Color(0xFF92E6A7), 
        child: const Icon(Icons.edit, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}