class Tasks {
  Tasks({required this.name, this.isDone = false});
  String name;
  bool isDone;

  void done() {
    isDone = !isDone;
  }
}
