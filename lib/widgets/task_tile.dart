import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkBoxCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      //Onchagned
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, onChanged: checkBoxCallback,

        //  onChanged: togglechekboxState,
      ),
    );
  }
}
// (checkboxState) {
//           setState(() {
//             isChecked = checkboxState;
//           });
