import 'dart:convert';

import 'package:aprendendo_flutter/models/post_model.dart';
import 'package:aprendendo_flutter/repositories/post_repository.dart';
import 'package:flutter/services.dart';

class PostRepositoryMock implements PostRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString("assets/json/posts.json");
    List postJson = jsonDecode(value);

    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
  
}