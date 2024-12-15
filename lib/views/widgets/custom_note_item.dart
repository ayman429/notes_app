import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNoteView(),
            ));
      },
      child: Container(
        padding:
            const EdgeInsetsDirectional.only(top: 24, bottom: 24, start: 24),
        decoration: const BoxDecoration(
          color: Color(0xFFFFCC80),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 16),
                  child: Text(
                    "Build your Career with ayman mansour",
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(.5)),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 24,
                      // Icons.delete,
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 24, top: 16),
              child: Text(
                "May21 , 2024",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
