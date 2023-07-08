import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: const Text("Add Note"),
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
                child: const Text("Add Note",),
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


