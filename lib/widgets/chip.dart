import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF5A6B87)),
      ),
      backgroundColor: const Color(0xFFF7F8FA),
      side: const BorderSide(
        color: Color(0xFFCED3DE),
      ),
    );
  }
}
