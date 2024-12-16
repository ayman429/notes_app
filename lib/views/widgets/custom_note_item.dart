// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(
                note: note,
              ),
            ));
      },
      child: Container(
        padding:
            const EdgeInsetsDirectional.only(top: 24, bottom: 24, start: 24),
        decoration: BoxDecoration(
          // color: Color(0xFFFFCC80),
          color: Color(note.color),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  // "Flutter Tips",
                  note.title,
                  style: const TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 16),
                  child: Text(
                    // "Build your Career with ayman mansour",
                    note.subTitle,
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(.5)),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16),
                  child: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
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
                // "May21 , 2024",
                note.date,
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
