import 'package:flutter/material.dart';

class EditNoteScreen extends StatefulWidget {
  EditNoteScreen({super.key, required this.note});

  String note;


  @override
  State<EditNoteScreen> createState() => _EditNoteScreen();
}

class _EditNoteScreen extends State<EditNoteScreen> {
  final noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    noteController.text = widget.note;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: const Text("Edit Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: noteController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Note",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  addNewNote();
                },
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: const Text("Update",),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addNewNote() {
    String note = noteController.text;
    Navigator.pop(context, note);

  }
}


