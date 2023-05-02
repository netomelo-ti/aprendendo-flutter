import 'dart:convert';

import 'package:aprendendo_flutter/models/comment_model.dart';
import 'package:aprendendo_flutter/repositories/comment_repository.dart';
import 'package:flutter/services.dart';

class CommentRepositoryMock implements CommentRepository {
  @override
  Future<List<CommentModel>> getList() async {
    var value = await rootBundle.loadString("assets/json/comments.json");
    List commentJson = jsonDecode(value);

    return commentJson.map((e) => CommentModel.fromJson(e)).toList();
  }
  
}