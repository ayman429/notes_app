import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(hintText: 'Title'),
            const SizedBox(height: 32),
            CustomTextField(hintText: 'Content', maxLines: 5),
            const SizedBox(height: 32),
            const CustomButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
