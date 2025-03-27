import 'package:flutter/material.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Health%20Plan/AllGoal.dart';

class TodayPlanScreen extends StatefulWidget {
  const TodayPlanScreen({super.key});

  @override
  State<TodayPlanScreen> createState() => _TodayPlanScreenState();
}

class _TodayPlanScreenState extends State<TodayPlanScreen> {
  final Map<String, bool> checkedStates = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: "Health Plan"),
      body: SingleChildScrollView(
        child: Column(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllPlanScreen()),
                      );
                    },
                    child: CustomTab(text: "All Goals", isSelected: false),
                  ),
                ],
              ),
            ),
            Container(
              height: 3,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    buildChecklistSection("Morning", [
                      HabitCheckButton(
                          habit: "Hydration",
                          description: "Drink 500ml of water.",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Movement",
                          description:
                              "Light stretching, yoga, or a short walk",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Nutrition",
                          description: "High-protein breakfast with fiber",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Mindfulness",
                          description:
                              "5-10 min of meditation or deep breathing",
                          checkedStates: checkedStates),
                    ]),
                    buildChecklistSection("Afternoon", [
                      HabitCheckButton(
                          habit: "Hydration",
                          description: "Drink 500ml of water.",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Movement",
                          description:
                              "Light stretching, yoga, or a short walk",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Nutrition",
                          description: "High-protein breakfast with fiber",
                          checkedStates: checkedStates),
                      HabitCheckButton(
                          habit: "Mindfulness",
                          description:
                              "5-10 min of meditation or deep breathing",
                          checkedStates: checkedStates),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildChecklistSection(String title, List<Widget> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Expanded(child: Divider(color: Colors.green, thickness: 1)),
        ],
      ),
      Column(children: items),
    ],
  );
}

// ✅ Reusable Check Button Component
class HabitCheckButton extends StatefulWidget {
  final String habit;
  final String description;
  final Map<String, bool> checkedStates;

  HabitCheckButton(
      {required this.habit,
      required this.description,
      required this.checkedStates});

  @override
  _HabitCheckButtonState createState() => _HabitCheckButtonState();
}

class _HabitCheckButtonState extends State<HabitCheckButton> {
  @override
  Widget build(BuildContext context) {
    // Ensure the habit has an entry in checkedStates
    widget.checkedStates.putIfAbsent(widget.habit, () => false);

    return ListTile(
      leading: Checkbox(
        value: widget.checkedStates[widget.habit],
        activeColor: Colors.green,
        onChanged: (bool? value) {
          setState(() {
            widget.checkedStates[widget.habit] = value!;
          });
        },
      ),
      title: Text(widget.habit, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(widget.description, style: TextStyle(color: Colors.green)),
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
