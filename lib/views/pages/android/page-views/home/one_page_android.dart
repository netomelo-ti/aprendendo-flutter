import 'package:aprendendo_flutter/models/post_model.dart';
import 'package:aprendendo_flutter/repositories/post_repository_mock.dart';
import 'package:flutter/material.dart';

import '../../../../../controllers/post_controller.dart';

class OnePageAndroid extends StatefulWidget {
  const OnePageAndroid({super.key});

  @override
  State<OnePageAndroid> createState() => _OnePageAndroidState();
}

class _OnePageAndroidState extends State<OnePageAndroid> {
  final PostController _controller = PostController(PostRepositoryMock());

  @override
  void initState(){
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts, 
        builder: (_, posts, __) => ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(posts[index].title,softWrap: true, textAlign: TextAlign.justify,),
            subtitle: Text("Código: ${posts[index].id.toString()}"),
          )
        ),),
    );
  }
}