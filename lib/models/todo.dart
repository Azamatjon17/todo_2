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
}
