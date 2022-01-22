// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taskCard.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskCardAdapter extends TypeAdapter<TaskCard> {
  @override
  final int typeId = 0;

  @override
  TaskCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskCard(
      fields[1] as String,
      fields[2] as String,
      fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TaskCard obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
