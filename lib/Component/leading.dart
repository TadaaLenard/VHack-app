import 'package:flutter/material.dart';

class CustomLeading extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomLeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
