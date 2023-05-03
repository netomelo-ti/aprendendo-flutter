import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:aprendendo_flutter/models/post_model.dart';
import 'package:aprendendo_flutter/repositories/post_repository.dart';

class PostRepositoryImp implements PostRepository {
  @override
  Future<List<PostModel>> getList() async{
    var url =
      Uri.https('jsonplaceholder.typicode.com', '/posts');
    try {
      
      var response = await http.get(url);
      print(response);
      //if (response.statusCode == 200) {
           
        List postJson = convert.jsonDecode(response.body);

        return postJson.map((e) => PostModel.fromJson(e)).toList();
        
      //}else{
        
     // }
    } catch (e) {
      throw "$e";
    }
  }
  

  
}