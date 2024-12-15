import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomAppBar(
              title: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}



// class NoteItem1 extends StatelessWidget {
//   const NoteItem1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.all(
//           Radius.circular(16),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "Flutter tips",
//                       style: TextStyle(fontSize: 16, color: Colors.black),
//                     ),
//                     SizedBox(
//                       width: 200,
//                       child: Text(
//                         "Build your Career with ayman mansour",
//                         maxLines: 5,
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                             fontSize: 12, color: Colors.black.withOpacity(.5)),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Icon(
//                   Icons.delete,
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//             Text(
//               "May 2024",
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style:
//                   TextStyle(fontSize: 12, color: Colors.black.withOpacity(.5)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
