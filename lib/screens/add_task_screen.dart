import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // final addText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late String addText;
    return Container(
      color: Color(0xff757575),
      child: Container(
        // child: Text('hello'),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              'Add Task',
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                //  controller: addText,
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  // print(newText);
                  addText = newText;
                },
                style: TextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(addText);
                    Navigator.pop(context);
                  },
                  child: Center(child: Text('add'))),
            ),
          ],
        ),
      ),
    );
  }
}
