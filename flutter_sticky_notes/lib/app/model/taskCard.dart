import 'package:hive/hive.dart';

part 'taskcard.g.dart';

@HiveType(typeId: 0)
class TaskCard {
  @HiveField(1)
  String title;

  @HiveField(2)
  String date;

  @HiveField(3)
  bool isCompleted = false;

  TaskCard(this.title, this.date, this.isCompleted);
}
