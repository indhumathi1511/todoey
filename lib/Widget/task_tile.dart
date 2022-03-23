import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool answer = false;
  final String text;
  final Function onPress;
  final VoidCallback longPress;
  TaskTile(this.answer, this.text, this.onPress, this.longPress);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        text,
        style:
            TextStyle(decoration: answer ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          onPress(value);
        },
        //(bool? isChecked) {
        //   // setState(() {
        //   //   answer = isChecked ?? false;
        //   // }
        //   );
        // },
        value: answer,
      ),

      //
    );
  }
}
