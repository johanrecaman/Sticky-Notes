import 'package:flutter/material.dart';
import 'package:flutter_sticky_notes/app/view/notes_view.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pink.shade900, brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
