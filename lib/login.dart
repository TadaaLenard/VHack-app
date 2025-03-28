import 'package:flutter/material.dart';
import 'package:vhackapp/Component/navbutton.dart';
import 'package:vhackapp/Component/userinput.dart';
import 'package:vhackapp/signup.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFB7EFC5),
          ],
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.language,
                    size: 40,
                  ),
                  onPressed: () {
                    // Handle language selection
                  },
                ),
              ),
            ),
            CustomTextField(
              label: "Email",
              hintText: "Enter your email...",
              width: 300,
              onChanged: (value) {
                print("User input: $value");
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: "Password",
              hintText: "Enter your password...",
              width: 300,
              onChanged: (value) {
                print("User input: $value");
              },
            ),
            const SizedBox(height: 20),
            const NavigationButton(
              text: "Log In",
            ),
            const SizedBox(height: 80),
            const Text(
              "New user? Click Here to Sign Up!",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF10451D),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const NavigationButton(
              text: "Sign Up",
              destination: signupScreen(),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
