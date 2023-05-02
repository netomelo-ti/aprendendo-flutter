import 'package:aprendendo_flutter/repositories/post_repository.dart';
import 'package:flutter/material.dart';

import '../models/post_model.dart';

class PostController {
  final PostRepository _postRepository;
  PostController(this._postRepository);
  
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async{
    posts.value = await _postRepository.getList();
  }
  
}