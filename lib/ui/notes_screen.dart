import 'package:first_project/ui/add_note_screen.dart';
import 'package:first_project/ui/edit_note_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}
// _NotesScreenState >> private
class _NotesScreenState extends State<NotesScreen> {
  List<String> notes = ["Wake up at 7 am","Call my dad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notes"),centerTitle: true,
        backgroundColor: Colors.cyan,),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         navigateToAddNoteScreen();
        },
        child: const Icon(Icons.add),
      ),
      body:  Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            print(index);
            return noteItem(index);
        },
        ),
      ),
    );
  }

  Widget noteItem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
           Expanded(child: Text(
             // hint #########################################
             notes[index],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          ),
          IconButton(
            onPressed: () => navigateToEditNoteScreen(index),
            icon: const Icon(
              Icons.edit,
              color: Colors.cyan,
            ),
          ),
          IconButton(
            onPressed: () {
              notes.removeAt(index);
              setState(() {});

            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
  // #########################################################
  void navigateToAddNoteScreen() {
    // push >> future
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  AddNoteScreen(),
        )
    ).then((value){
      print('NoteScreen => $value');
      if (value == null)return;
      notes.add(value);
      setState(() {});

      });
    }
  void navigateToEditNoteScreen(int index) {
    // push >> future
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  EditNoteScreen(
            note: notes[index],),
        )
    ).then((value){
      print('NoteScreen => $value');
      if (value == null)return;
      notes[index] = value;
      setState(() {});

    });
  }
  }










