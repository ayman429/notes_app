// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
