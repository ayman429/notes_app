import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
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
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Icon(Icons.search),
      ),
    );
  }
}
