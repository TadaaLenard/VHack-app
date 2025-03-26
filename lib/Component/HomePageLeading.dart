import 'package:flutter/material.dart';

class HomePageLeading extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HomePageLeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.language),
          onPressed: () {
            // Handle language selection
          },
        ),
      ],
      backgroundColor: Color(0xFF92E6A7),
      foregroundColor: Colors.black,
      elevation: 2,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
