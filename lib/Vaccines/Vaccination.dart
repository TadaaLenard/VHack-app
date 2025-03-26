import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Vaccines/SmartSearchType.dart';

class Vaccination extends StatefulWidget {

  const Vaccination({super.key});

  @override
  State<Vaccination> createState() => _VaccinationState();
}

class _VaccinationState extends State<Vaccination> {
  String text = '';

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: const CustomLeading(title: 'Vaccination'),
    body: SingleChildScrollView( 
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded( 
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFF10451D), width: 3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Vaccine Name',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Divider(thickness: 2, color: Color.fromARGB(255, 52, 47, 47)),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search description',
                            hintStyle: const TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            setState(() {
                              text = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => SmartSearchType()),
                        );
                      },
                      child: const Icon(Icons.person_search_sharp, size: 56,), // 👈 Add an icon here
                    ),
                    const SizedBox(height: 4),
                    const Text('Smart\nSearch', style: TextStyle(fontSize: 12)),
                  ],
                ),

              ],
            ),
            const SizedBox(height: 16),
            text.isEmpty ? const SearchEmpty() : const SearchNotEmpty(),
          ],
        ),
      ),
    ),
  );
}
}

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'News', 
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 24,
          ),
        ), 
        const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
        News(),
        SizedBox(height: 16,), 
        News(),
        SizedBox(height: 16,),
      ],
    );
  }
}

class SearchNotEmpty extends StatelessWidget {
  const SearchNotEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Availability', 
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 24,
          ),
        ), 
        const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
        SizedBox(height: 16,), 
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text('Filter Location'),
              ), 
              Icon(Icons.filter_alt_outlined),
            ],
          ),
        SizedBox(height: 16,),
        HospitalCard(),
        SizedBox(height: 16,), 
        HospitalCard(),
        SizedBox(height: 16,)
      ],
    );
  }
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> details =[
      'Diseases', 
      'Content Summary', 
      'By sources (hyperlink)',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 250,
        ), 
        Text(
          'News Title',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details.map((detail) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.fiber_manual_record, size: 12),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    detail,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> details =[
      'Location: ', 
      'Operating Hour', 
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 250,
        ), 
        Text(
          'Hospital/ Clinic Name',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details.map((detail) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.fiber_manual_record, size: 12),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    detail,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}