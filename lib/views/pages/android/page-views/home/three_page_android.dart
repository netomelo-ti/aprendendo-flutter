import 'package:aprendendo_flutter/controllers/todo_controller.dart';
import 'package:aprendendo_flutter/models/todo_model.dart';
import 'package:aprendendo_flutter/repositories/todo_repository_mock.dart';
import 'package:flutter/material.dart';

class ThreePageAndroid extends StatefulWidget {
  const ThreePageAndroid({super.key});

  @override
  State<ThreePageAndroid> createState() => _ThreePageAndroidState();
}

class _ThreePageAndroidState extends State<ThreePageAndroid> {
  final TodoController _controller = TodoController(TodoRepositoryMock());

  @override
  void initState(){
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ValueListenableBuilder<List<TodoModel>>(
        valueListenable: _controller.todos, 
        builder: (_, todos, __) => ListView.separated(
          itemCount: todos.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(todos[index].title,softWrap: true, textAlign: TextAlign.justify,),
            subtitle: Text("Completed: ${todos[index].completed.toString()}"),
          ),
          separatorBuilder: (_,__) => const Divider(),
        ),
      ),
    );
  }
}