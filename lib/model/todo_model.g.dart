// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoModel _$$_ToDoModelFromJson(Map<String, dynamic> json) => _$_ToDoModel(
      todoName: json['todoName'] as String? ?? '',
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ToDoModelToJson(_$_ToDoModel instance) =>
    <String, dynamic>{
      'todoName': instance.todoName,
      'isDone': instance.isDone,
    };
