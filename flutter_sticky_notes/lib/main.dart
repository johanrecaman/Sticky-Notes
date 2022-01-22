import 'package:flutter/material.dart';
import 'package:flutter_sticky_notes/app/model/taskCard.dart';
import 'package:flutter_sticky_notes/app/view/notes_view.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(TaskCardAdapter());
  await Hive.openBox<TaskCard>('tasks');

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
