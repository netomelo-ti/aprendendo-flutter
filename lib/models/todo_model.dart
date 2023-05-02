class TodoModel {
  late int userId;
  late int id;
  late String title;
  late bool completed;

  TodoModel(
    this.userId,
    this.id,
    this.title,
    this.completed
  );

  factory TodoModel.fromJson(Map json){
    return TodoModel(json['userId'], json['id'], json['title'], json['completed']);
  }
  
}