class NotesController {
  List taskList = [];

  String getTask(int index) {
    return taskList[index];
  }

  void newTask(String value) {
    taskList.add(value);
  }
}
