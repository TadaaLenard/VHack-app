import 'package:flutter/material.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';
import 'package:vhackapp/Component/HomePageLeading.dart';
import 'DisplayCertificate.dart';
import 'DisplayOKUCertificates.dart';

class CertificateCollection extends StatelessWidget {
  const CertificateCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageLeading(title: 'Certificates and Reports'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  OKUCard(
                    dateIssued: '18/3/2025', 
                    issuedBy: 'Ministry of Health',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DisplayOKUCertificate()),
                      );
                    },
                  ),

                  CertificateCard(
                    certificateName: 'Certificate Name', 
                    dateIssued: '18/3/2025', 
                    issuedBy: 'Ministry of Health', 
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DisplayCertificate()),
                      );
                    },
                  ),

                  CertificateCard(
                    certificateName: 'Certificate Name', 
                    dateIssued: '18/3/2025', 
                    issuedBy: 'Ministry of Health', 
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DisplayCertificate()),
                      );
                    },
                  ),

                  CertificateCard(
                    certificateName: 'Certificate Name', 
                    dateIssued: '18/3/2025', 
                    issuedBy: 'Ministry of Health',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DisplayCertificate()),
                      );
                    },
                  ),
                  SizedBox(height: 6),

                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedButton(
                      text: 'Add \nCertificates',
                      onPressed: () {
                        print('Add Certificates button pressed');
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



class CertificateCard extends StatelessWidget {
  final String certificateName;
  final String dateIssued;
  final String issuedBy;
  final VoidCallback? onTap;

  const CertificateCard({
    super.key,
    required this.certificateName,
    required this.dateIssued,
    required this.issuedBy,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity, 
        height: 110, 
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.white, Color(0xFFB7EFC5)], 
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text(
                    certificateName,
                    style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4), 
                  Text(
                    "Date Issued: $dateIssued",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "Issued by: $issuedBy",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),

              const Icon(
                Icons.chevron_right, 
                size: 32, 
                color: Colors.black,
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}

class OKUCard extends StatelessWidget {
  final String dateIssued;
  final String issuedBy;
  final VoidCallback? onTap;

  const OKUCard({
    super.key,
    required this.dateIssued,
    required this.issuedBy,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity, 
        height: 110, 
        padding: const EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFB7EFC5), Color(0xFF25A244)], 
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text(
                    'OKU Certification',
                    style: const TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4), 
                  Text(
                    "Date Issued: $dateIssued",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "Issued by: $issuedBy",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),

              const Icon(
                Icons.chevron_right, 
                size: 32, 
                color: Colors.black,
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}