import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/CustomBox.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';

class CertificatesVerification extends StatelessWidget {
  const CertificatesVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Certificates and Reports'),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  CustomBox(title: 'Name', promptText: 'Enter your name...'),
                  SizedBox(height: 12),
                  CustomBox(title: 'Certificates or Report\'s Name', promptText: 'Enter Certificates or Report\'s Name...'),
                  SizedBox(height: 12),
                  CustomBox(title: 'Date Issued', promptText: 'Enter date issued...'),
                  SizedBox(height: 12),
                  CustomBox(title: 'Issued by', promptText: 'Issued by...'),
                  SizedBox(height: 12),
                  

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
                          'Upload Certificates or Report\'s Photo',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),

                        const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),

                        Center(
                          child: Icon(Icons.camera_alt_outlined, size: 96,),
                        ),

                        
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 12),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      text: 'Verify',
                      onPressed: () {
                        print('Verify button pressed');
                      },
                    ),
                  ),

                ],
              )
            )

          ],
        ),
      )
    );
  }
}