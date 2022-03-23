import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.taskList[index];
            return TaskTile(task.isDone, task.name, (newValue) {
              taskData.updateTask(task);
            }, () {
              taskData.deleteTask(task);
            });
          },
          itemCount: taskData.count,
        );
      },
    );
  }
}
