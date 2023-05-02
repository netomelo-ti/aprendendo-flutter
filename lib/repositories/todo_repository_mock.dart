import 'dart:convert';

import 'package:aprendendo_flutter/models/todo_model.dart';
import 'package:aprendendo_flutter/repositories/todo_repository.dart';
import 'package:flutter/services.dart';

class TodoRepositoryMock implements TodoRepository {
  @override
  Future<List<TodoModel>> getList() async {
    var value = await rootBundle.loadString("assets/json/todos.json");
    List todoJson = jsonDecode(value);

    return todoJson.map((e) => TodoModel.fromJson(e)).toList();
  }
  
}