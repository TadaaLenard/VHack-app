import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/navbutton.dart';
import 'package:vhackapp/Health%20Plan/CreatePlan.dart';

class EmptyplanScreen extends StatelessWidget {
  const EmptyplanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: "Health Plan"),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // "Today's Goal" Button
                GestureDetector(
                  onTap: () {},
                  child: CustomTab(text: "Today's Goal", isSelected: true),
                ),
                // "All Goals" Button
                GestureDetector(
                  onTap: () {},
                  child: CustomTab(text: "All Goals", isSelected: false),
                ),
              ],
            ),
          ),
          Container(
            height: 3,
            color: Colors.green,
          ),
          const Expanded(
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have no any personalised healthcare plan yet!",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  NavigationButton(
                    text: "Create new",
                    destination: CreateHPDemoScreen(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Custom reusable tab button
class CustomTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CustomTab({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green[200] : Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(color: Colors.green, width: 2),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
