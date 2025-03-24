import 'package:flutter/material.dart';
import 'package:vhackapp/Component/CustomBox.dart';
import 'package:vhackapp/Component/leading.dart';
import 'package:vhackapp/Component/CustomElevatedButton.dart';

class AddAlert extends StatefulWidget {
  const AddAlert({super.key});

  @override
  State<AddAlert> createState() => AddAlertState();
}

class AddAlertState extends State<AddAlert> {
  bool isMedicationSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Add Alert'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButton(
                  text: "Medication",
                  isSelected: isMedicationSelected,
                  onTap: () {
                    setState(() {
                      isMedicationSelected = true;
                    });
                  },
                ),
                const SizedBox(width: 16),
                ToggleButton(
                  text: "Check-ups",
                  isSelected: !isMedicationSelected,
                  onTap: () {
                    setState(() {
                      isMedicationSelected = false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),

            isMedicationSelected ? _buildMedicationFields() : _buildCheckUpFields(),

            const SizedBox(height: 24),

            Center(
              child: CustomElevatedButton(
                text: 'Save', 
                onPressed: (){
                  print('Save button pressed. ');
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ToggleButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255, 15, 138, 46) : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

 Widget _buildMedicationFields() {
    return Column(
      children: [
        CustomBox(title: "Date", promptText: 'Enter date...',),
        const SizedBox(height: 12),
        CustomBox(title: "Time", promptText: 'Enter time...',),
        const SizedBox(height: 12),
        CustomBox(title: "Medicine", promptText: 'Enter medicine type...',),
      ],
    );
  }

  Widget _buildCheckUpFields() {
    return Column(
      children: [
        CustomBox(title: "Date", promptText: 'Enter date...',),
        const SizedBox(height: 12),
        CustomBox(title: "Time", promptText: 'Enter time...',),
        const SizedBox(height: 12),
        CustomBox(title: "Location", promptText: 'Enter location...',),
      ],
    );
  }
