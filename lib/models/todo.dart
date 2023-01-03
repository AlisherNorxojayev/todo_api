class Todo {
  final String title;
  final String description;
  final bool completed;
  final int id;

  Todo({
    required this.title,
    required this.description,
    required this.completed,
    required this.id
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json["id"],
      title: json['title'],
      description: json['description'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'completed': completed,
      "id":id
    };
  }
}
