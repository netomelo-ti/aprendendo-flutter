class CommentModel {
  late int postId;
  late int id;
  late String name;
  late String email;
  late String body;

  CommentModel(
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body
  );

  factory CommentModel.fromJson(Map json){
    return CommentModel(json['postId'], json['id'], json['name'], json['email'], json['body']);
  }
  
}