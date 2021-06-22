import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked ;
  final Function checkBoxState;
  final Function deleteTask;
  TaskTile({this.taskTitle, this.isChecked, this.checkBoxState ,this.deleteTask});
  @override
  Widget build(BuildContext context) {

    return ListTile(
      onLongPress: deleteTask,
      title: Text(taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blue,
        value: isChecked,
        onChanged: checkBoxState,
      ),
    );
  }
}
