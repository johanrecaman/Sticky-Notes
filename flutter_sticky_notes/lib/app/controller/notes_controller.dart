import 'package:flutter_sticky_notes/app/model/task_card_model.dart';

class NotesController {
  List<TaskCardModel> taskList = [];

  TaskCardModel getTask(int index) {
    return taskList[index];
  }

  void newTask(String title, String date) {
    TaskCardModel task = new TaskCardModel(0, title, date, false);
    taskList.add(task);
  }
}
