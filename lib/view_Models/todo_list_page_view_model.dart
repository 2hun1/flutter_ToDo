import 'package:state_notifier/state_notifier.dart';
import 'package:todo_firebase/repository/todo_repository.dart';

import '../states/todo_list_page_state.dart';

class TodoListPageViewModel extends StateNotifier<TodoListPageState>
    with LocatorMixin {
  ///プロバイダーが作られたときに初期処理を行うために必要
  TodoListPageViewModel() : super(const TodoListPageState());

  final _repository = ToDoRepository();
  @override
  void initState() async {
    /// Futureの場合
    // await getTodosByFuture();

    /// Streamの場合
    getTodosByStream();
    super.initState();
  }

  set setIsLoading(bool v) {
    state = state.copyWith(isLoading: v);
  }

  /// Futureの場合

  Future<void> getTodosByFuture() async {
    setIsLoading = true;
    await Future.delayed(const Duration(seconds: 3));
    final todos = await _repository.getTodoByFuture();
    state = state.copyWith(todos: todos);
    setIsLoading = false;
  }

  /// Streamの場合
  void getTodosByStream() async {
    _repository.getTodoByStream().listen((todos) {
      state = state.copyWith(
        todos: todos,
      );
    });
  }
}
