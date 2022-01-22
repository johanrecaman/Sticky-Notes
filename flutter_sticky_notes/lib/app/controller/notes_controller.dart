import 'package:flutter_sticky_notes/app/model/taskCard.dart';

class NotesController {
  List<TaskCard> taskList = [];

  TaskCard getTask(int index) {
    return taskList[index];
  }

  void newTask(String title, String date) {
    TaskCard task = new TaskCard(title, date, false);
    taskList.add(task);
  }
}
