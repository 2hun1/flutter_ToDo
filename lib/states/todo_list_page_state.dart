import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/model/todo_model.dart';
part 'todo_list_page_state.freezed.dart';
part 'todo_list_page_state.g.dart';

@freezed
class TodoListPageState with _$TodoListPageState {
  const factory TodoListPageState({
    @Default(<ToDoModel>[]) List<ToDoModel> todos,
    @Default(false) bool isLoading,
  }) = _TodoListPageState;

  factory TodoListPageState.fromJson(Map<String, dynamic> json) =>
      _$TodoListPageStateFromJson(json);
}
