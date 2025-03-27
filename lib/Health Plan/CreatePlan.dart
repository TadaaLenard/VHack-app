import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/navbutton.dart';
import 'package:vhackapp/Component/userinput.dart';
import 'package:vhackapp/Health%20Plan/TodayPlan.dart';

class CreateHPDemoScreen extends StatefulWidget {
  const CreateHPDemoScreen({super.key});

  @override
  State<CreateHPDemoScreen> createState() => __CreateHPDemoScreenState();
}

class __CreateHPDemoScreenState extends State<CreateHPDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: "Health Plan"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: CustomTab(text: "Demography")),
            Container(
              height: 3,
              color: Colors.green,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomTextField(label: "Date of Birth", hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(label: "Gender", hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(
                      label:
                          "Cultural or religious preferences that impact your healthcare (Optional)",
                      hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(label: "Weight", hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(label: "Height", hintText: "Enter..."),
                  SizedBox(height: 20),
                  NavigationButton(
                    text: "Next",
                    destination: CreateHPMCScreen(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreateHPMCScreen extends StatefulWidget {
  const CreateHPMCScreen({super.key});

  @override
  State<CreateHPMCScreen> createState() => __CreateHPMCScreenState();
}

class __CreateHPMCScreenState extends State<CreateHPMCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: "Health Plan"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const CustomTab(text: "Medical Condition")),
            Container(
              height: 3,
              color: Colors.green,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomTextField(
                      label: "Existing medical conditions",
                      hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(
                      label: "Current Medications", hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(
                      label: "Past surgeries or hospitalizations",
                      hintText: "Enter..."),
                  SizedBox(height: 20),
                  CustomTextField(label: "Allergies", hintText: "Enter..."),
                  SizedBox(height: 20),
                  NavigationButton(
                    text: "Next",
                    destination: CreateHPGoalScreen(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreateHPGoalScreen extends StatefulWidget {
  const CreateHPGoalScreen({super.key});

  @override
  State<CreateHPGoalScreen> createState() => __CreateHPGoalScreenState();
}

class __CreateHPGoalScreenState extends State<CreateHPGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: "Health Plan"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const CustomTab(text: "Medical Condition")),
            Container(
              height: 3,
              color: Colors.green,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomTextField(
                      label: "Your expected goals", hintText: "Enter..."),
                  SizedBox(height: 20),
                  NavigationButton(
                    text: "Create Plans",
                    destination: TodayPlanScreen(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String text;

  const CustomTab({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(color: Colors.green, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
