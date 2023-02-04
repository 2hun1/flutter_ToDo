// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoListPageState _$$_TodoListPageStateFromJson(Map<String, dynamic> json) =>
    _$_TodoListPageState(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => ToDoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ToDoModel>[],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoListPageStateToJson(
        _$_TodoListPageState instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'isLoading': instance.isLoading,
    };
