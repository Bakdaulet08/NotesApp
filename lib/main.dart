import 'package:flutter/material.dart';
import 'package:notes_app/pages/notes_page.dart';
import 'package:provider/provider.dart';

import 'models/note_database.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(
      ChangeNotifierProvider(
        create:(context) => NoteDatabase(),
        child: const MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage()
    );
  }
}

