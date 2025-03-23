import 'package:flutter/material.dart';
import 'Component/ProfileBox.dart'; 
import 'Component/leading.dart'; 
import 'Component/CustomElevatedButton.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomLeading(title: 'Edit Profile'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ProfileBox(
                    title: 'Email',
                    value: 'email@gmail.com',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Password',
                    value: '***********',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Name',
                    value: 'Name...',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Contact Number',
                    value: '+60123456789',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Address',
                    value: 'Malaysia',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Gender',
                    value: 'Male',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Date of Birth',
                    value: '1 Jan 1970',
                  ),
                  SizedBox(height: 12),
                  ProfileBox(
                    title: 'Emergency Contact',
                    value: '+601987654321',
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomElevatedButton(
                  text: "Edit",
                  onPressed: () {
                    print("Edit button pressed");
                  },
                ),
                CustomElevatedButton(
                  text: "Save",
                  onPressed: () {
                    print("Save button pressed");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
