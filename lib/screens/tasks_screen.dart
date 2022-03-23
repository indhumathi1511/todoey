import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widget/task_list.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen())));
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.pink,
            padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${Provider.of<TaskData>(context).count}tasks',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
