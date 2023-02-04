import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_firebase/model/todo_model.dart';

class ToDoRepository {
  Future<void> createTodo(Map<String, dynamic> json) async {
    try {
      final _db = FirebaseFirestore.instance;
      final collectionRef = _db.collection('todos');
      final docId = collectionRef.doc().id;
      await collectionRef.doc(docId).set(
            json,
            SetOptions(merge: true),
          );
    } catch (e) {
      print(e);
    }
  }

  /// Streamの場合
  Stream<List<ToDoModel>> getTodoByStream() {
    final _db = FirebaseFirestore.instance;
    final dataList = _db.collection('todos').snapshots();
    final res = dataList.map((event) =>
        event.docs.map((e) => ToDoModel.fromJson(e.data())).toList());
    return res;
  }

  /// Futureの場合
  Future<List<ToDoModel>> getTodoByFuture() async {
    final _db = FirebaseFirestore.instance;

    ///コレクションはfirebase上の一覧取得をしてる。///
    final dataList = await _db.collection('todos').get();

    /// dataList.docs
    /// query
    /// QuerySnapshot: {
    ///   metadata: {
    ///     メタデータ
    ///   }
    ///   docs: [
    ///     ここに(docsに)firebaseから取得したデータがある
    ///   ]
    /// }
    final docs = dataList.docs;
    final result = docs
        .map(
          ///mapは配列に対して繰り返し処理をしている///
          (e) => ToDoModel.fromJson(
            ///Jsonからflutterに変換している///
            e.data(),
          ),
        )
        .toList();
    return result;
  }
}
