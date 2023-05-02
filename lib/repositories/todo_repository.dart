import 'package:aprendendo_flutter/models/todo_model.dart';

abstract class TodoRepository {
  
  Future<List<TodoModel>> getList();
}