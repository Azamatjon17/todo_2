class Todo {
  String title;
  String decoration;
  DateTime time;
  String category;
  int priority;
  List<String> subTask;

  Todo({
    required this.title,
    required this.decoration,
    required this.time,
    required this.category,
    required this.priority,
    required this.subTask,
  });

  factory Todo.fromMap(Map<String, dynamic> data) {
    return Todo(
      title: data['title'],
      decoration: data['decoration'],
      time: DateTime.parse(data['time']), // Convert String to DateTime
      category: data['category'],
      priority: data['priority'],
      subTask: List<String>.from(
          data['subTask']), // Convert List<dynamic> to List<String>
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'decoration': decoration,
      'time': time.toIso8601String(), // Convert DateTime to String
      'category': category,
      'priority': priority,
      'subTask': subTask, // Already a List<String>
    };
  }
}
