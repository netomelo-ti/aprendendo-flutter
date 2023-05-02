import 'package:aprendendo_flutter/models/comment_model.dart';

abstract class CommentRepository {
  
  Future<List<CommentModel>> getList();
}