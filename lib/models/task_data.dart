import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> taskList = [
    Tasks(name: 'biscuits'),
    Tasks(name: 'chocolates'),
  ];

  int get count {
    return taskList.length;
  }

  void addTask(String addText) {
    final tasks = Tasks(name: addText);
    taskList.add(tasks);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.done();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    taskList.remove(task);
    notifyListeners();
  }
}
