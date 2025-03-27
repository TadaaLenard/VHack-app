import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';

class AllPlanScreen extends StatefulWidget {
  const AllPlanScreen({super.key});

  @override
  State<AllPlanScreen> createState() => _AllPlanScreenState();
}

class _AllPlanScreenState extends State<AllPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomLeading(title: "Health Plan"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black, thickness: 2)),
                  SizedBox(width: 8),
                  Text(
                    "Summary",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: Divider(color: Colors.black, thickness: 2)),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "A personalized long-term health plan for muscle gain aims to build "
                "5-10 kg of lean muscle in 12 months through 4-5 weekly strength workouts "
                "focusing on compound lifts. A high-protein diet with lean meats, complex carbs, "
                "and healthy fats supports growth, alongside 3L+ water daily and 8 hours of sleep "
                "for recovery. Strength goals include +20 kg on bench press and +30 kg on squats, "
                "ensuring continuous progress in muscle size, strength, and endurance.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black, thickness: 2)),
                  SizedBox(width: 8),
                  Text(
                    "Long terms",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: Divider(color: Colors.black, thickness: 2)),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Phase 1: Foundation (Months 1-3)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "Goal: Build strength, improve form, and establish consistency.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              BulletPointText(
                  "Workouts: 4 days/week (Full-body & split training)."),
              BulletPointText(
                  "Diet: High-protein intake (1.6-2g/kg body weight), complex carbs, and healthy fats."),
              BulletPointText(
                  "Hydration & Sleep: 3L+ water/day, 7-9 hours of sleep."),
            ],
          ),
        ),
      ),
    );
  }
}

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

class BulletPointText extends StatelessWidget {
  final String text;
  const BulletPointText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• ", style: TextStyle(fontSize: 16)), // Bullet point
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
