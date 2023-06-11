// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoDataModelAdapter extends TypeAdapter<TodoDataModel> {
  @override
  final int typeId = 3;

  @override
  TodoDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoDataModel(
      (fields[0] as List).cast<Todo>(),
    );
  }

  @override
  void write(BinaryWriter writer, TodoDataModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.todos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
