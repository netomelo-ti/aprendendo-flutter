import 'package:aprendendo_flutter/models/post_model.dart';

abstract class PostRepository {
  
  Future<List<PostModel>> getList();
}