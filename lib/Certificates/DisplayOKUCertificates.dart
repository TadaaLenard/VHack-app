import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart'; 
import 'CertificatesCollection.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';
import 'OKUCertVerification.dart';

class DisplayOKUCertificate extends StatelessWidget {
  const DisplayOKUCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Certificates and Reports'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OKUCard(dateIssued: '18/3/2025', issuedBy: 'Ministry of Health'),
            Container(
              width: double.infinity,
              height: 450,
              alignment: Alignment.center,
              color: Color(0xFFD9D9D9),
              child: Text(
                'Sample Certificates', 
                textAlign: TextAlign.center,
              ),
            ), 

            SizedBox(height: 16,),
            Center(
              child:             
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedButton(
                    text: 'Edit',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OKUCertVerification()),
                      );
                    },
                  ), 
                  ElevatedButton(
                    onPressed: (){
                      print('Delete button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, 
                      foregroundColor: const Color(0xFF10451D), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                        side: const BorderSide(
                          color: Color(0xFF10451D), 
                          width: 3, 
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), 
                      elevation: 5, 
                      alignment: Alignment.center,
                    ),
                    child: Text(
                      'Delete',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                  ),
                ],
              )
            )

          ]
        )
      )
    );
  }
}