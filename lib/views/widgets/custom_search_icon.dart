// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  const CustomSearchIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color(0xFF363636),
        color: Colors.white.withOpacity(.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(icon),
      ),
    );
  }
}
