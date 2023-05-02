import 'package:aprendendo_flutter/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

import '../models/todo_model.dart';

class TodoController {
  final TodoRepository _todoRepository;
  TodoController(this._todoRepository);
  
  ValueNotifier<List<TodoModel>> todos = ValueNotifier<List<TodoModel>>([]);

  fetch() async{
    todos.value = await _todoRepository.getList();
  }
  
}