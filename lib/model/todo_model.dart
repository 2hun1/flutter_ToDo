import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class ToDoModel with _$ToDoModel {
  const factory ToDoModel({
    @Default('') String todoName,
    @Default(false) bool isDone,
  }) = _ToDoModel;

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);
}
