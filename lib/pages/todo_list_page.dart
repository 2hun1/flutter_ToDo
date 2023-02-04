import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:todo_firebase/states/todo_list_page_state.dart';
import 'package:todo_firebase/view_Models/todo_list_page_view_model.dart';

import '../view_Models/create_page_view_model.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TodoListPageViewModel, TodoListPageState>(
          create: (_) => TodoListPageViewModel(),
          lazy: false,
        ),
      ],
      child: const _ToDoListPage(),
    );
  }
}

class _ToDoListPage extends StatelessWidget {
  const _ToDoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoListPageState>().todos;
    final isloading = context.watch<TodoListPageState>().isLoading;
    if (isloading) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      itemBuilder: (_, index) {
        final todo = todos[index];
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListTile(
            title: Text(
              todo.todoName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: todos.length,
    );
  }
}
