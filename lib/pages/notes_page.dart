import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  void createNote(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.add)
      )
    );
  }
}
