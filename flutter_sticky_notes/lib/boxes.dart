import 'package:hive/hive.dart';

import 'app/model/taskCard.dart';

class Boxes {
  static Box<TaskCard> getTasks() => Hive.box<TaskCard>('tasks');

  void newTask(String title, String date) {
    TaskCard task = new TaskCard(title, date, false);
    final box = Boxes.getTasks();
    box.add(task);
  }
}
