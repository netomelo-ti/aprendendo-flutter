import 'package:aprendendo_flutter/repositories/comment_repository.dart';
import 'package:flutter/material.dart';

import '../models/comment_model.dart';

class CommentController {
  final CommentRepository _commentRepository;
  CommentController(this._commentRepository);
  
  ValueNotifier<List<CommentModel>> comments = ValueNotifier<List<CommentModel>>([]);

  fetch() async{
    comments.value = await _commentRepository.getList();
  }
  
}