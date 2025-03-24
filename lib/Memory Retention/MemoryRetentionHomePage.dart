import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'ThreeWordsAhead.dart';
import 'package:vhackapp/Component/FeatureBox.dart';

class MemoryRetentionHomePage extends StatelessWidget {
  const MemoryRetentionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Memory Retention'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            FeatureBox(
              text: "3 Words Ahead Games",
              destination: const ThreeWordsAhead(), // Pass destination
            ),
            
          ],
        ),
      ),
    );
  }
}

