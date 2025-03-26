import 'package:flutter/material.dart';
import 'package:vhackapp/Alert/AlertList.dart';
import 'package:vhackapp/Certificates/CertificatesCollection.dart';
import 'package:vhackapp/Cognitive%20Exercise/CognitiveExerciseHomePage.dart';
import 'package:vhackapp/Component/BottomNavBar.dart';
import 'package:vhackapp/Diabetes/DiabetesMonitor.dart';
import 'package:vhackapp/EditProfile.dart';
import 'package:vhackapp/Heart%20Rate%20Monitor/HeartRateMonitor.dart';
import 'package:vhackapp/Memory%20Retention/MemoryRetentionHomePage.dart';
import 'package:vhackapp/Mental%20Health%20Support/MentalHealthSupport.dart';
import 'package:vhackapp/Specialist/SpecialistNotRegistered.dart';
import 'package:vhackapp/TrackSymptoms/TrackSymptoms.dart';
import 'package:vhackapp/Vaccines/Vaccination.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(), // Fixed: Replaced HomePage with extracted content
    const SpecialistNotRegistered(),
    const EditProfile(),
    const CertificateCollection(),
    const HomePageContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36,),
          const HomePageProfileWidget(),
          const SizedBox(height: 16),
          const Dashboard(),
          const SizedBox(height: 16),
          const Separater(title: 'Services'),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HomePageFeatureBox(title: 'OKU\nTransport'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Separater(title: 'Physical Health'),
          const SizedBox(height: 16),
          _buildFeatureRow([
            const HomePageFeatureBox(title: 'Alerts', destination: AlertList()),
            const HomePageFeatureBox(title: 'Track\nSymptoms', destination: TrackSymptoms()),
            const HomePageFeatureBox(title: 'Diabetes\nMonitor', destination: DiabetesMonitor()),
            const HomePageFeatureBox(title: 'Heart Rate\nMonitor', destination: HeartRateMonitor()),
            const HomePageFeatureBox(title: 'Vaccine', destination: Vaccination()),
          ]),
          const SizedBox(height: 16),
          const Separater(title: 'Mental Health'),
          const SizedBox(height: 16),
          _buildFeatureRow([
            const HomePageFeatureBox(title: 'Memory\nRetention', destination: MemoryRetentionHomePage()),
            const HomePageFeatureBox(title: 'Cognitive\nExercise', destination: CognitiveExerciseHomePage()),
            const HomePageFeatureBox(title: 'Chatbot\nSupport'),
            const HomePageFeatureBox(title: 'Health\nPlans'),
            const HomePageFeatureBox(title: 'Mental\nHealth\nSupport', destination: MentalHealthSupport()),
          ]),
        ],
      ),
    );
  }
}

  Widget _buildFeatureRow(List<Widget> children) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: children.map((widget) => Padding(
            padding: const EdgeInsets.only(right: 10),
            child: widget,
          )).toList(),
        ),
      ),
    );
  }


class HomePageProfileWidget extends StatelessWidget {
  const HomePageProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows profile icon to overflow
      children: [
        Column(
          children: [
            // Top Row with Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.volume_up, size: 40), 
                  Icon(Icons.language, size: 40),
                ],
              ),
            ),
            const SizedBox(height: 30), // Space for profile icon
            // Green Container
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFB7EFC5),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xFF10451D), width: 3)
              ),
              alignment: Alignment.center,
              child: const Text(
                'Hello, Username!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Positioned(
          top: 30, 
          left: MediaQuery.of(context).size.width / 2 - 52, 
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF10451D),
              border: Border.all(color: Colors.white, width: 4),
              
            ),
            child: const Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}



class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView(
        children: [
          _buildDashboardCard('Check-ups Reminder'),
          _buildDashboardCard('Display Heart Rate Graphs'),
          _buildDashboardCard('Display Glucose Level Graphs'),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(String text) {
    return Container(
      width: double.infinity,
      height: 250,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class HomePageFeatureBox extends StatelessWidget {
  final String title;
  final Widget? destination;

  const HomePageFeatureBox({super.key, required this.title, this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (destination != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination!),
          );
        }
      },
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFB7EFC5),
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Separater extends StatelessWidget {
  final String title;
  const Separater({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const Divider(thickness: 4, color: Color.fromARGB(255, 52, 47, 47)),
      ],
    );
  }
}

