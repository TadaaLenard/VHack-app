import 'package:flutter/material.dart';
import 'package:vhackapp/Health%20Plan/EmptyPlan.dart';
import 'package:vhackapp/Health%20Plan/TodayPlan.dart';
import 'package:vhackapp/OKU%20transport/OKUtransport.dart';
import 'package:vhackapp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: loginScreen(),
    );
  }
}
