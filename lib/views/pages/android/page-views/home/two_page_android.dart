import 'package:aprendendo_flutter/controllers/comment_controller.dart';
import 'package:aprendendo_flutter/models/comment_model.dart';
import 'package:aprendendo_flutter/repositories/comment_repository_mock.dart';
import 'package:flutter/material.dart';

class TwoPageAndroid extends StatefulWidget {
  const TwoPageAndroid({super.key});

  @override
  State<TwoPageAndroid> createState() => _TwoPageAndroidState();
}

class _TwoPageAndroidState extends State<TwoPageAndroid> {
  final CommentController _controller = CommentController(CommentRepositoryMock());

  @override
  void initState(){
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ValueListenableBuilder<List<CommentModel>>(
        valueListenable: _controller.comments, 
        builder: (_, comments, __) => ListView.separated(
          itemCount: comments.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(comments[index].name,softWrap: true, textAlign: TextAlign.justify,),
            subtitle: Text("Email: ${comments[index].email}"),
          ),
          separatorBuilder: (_,__) => const Divider(),
        ),
      ),
    );
  }
}