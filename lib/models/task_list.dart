import 'package:flutter/material.dart';
import 'package:provider_example/models/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/todo_list.dart';
class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index){
          return TaskTile(
              taskTitle: Provider.of<TodoList>(context).tasks[index].taskName,
              isChecked: Provider.of<TodoList>(context).tasks[index].isDone,
              checkBoxState: (isChecked){
                setState(() {
                Provider.of<TodoList>(context,listen: false).tasks[index].toggleCheckBox();
                });
              },
              deleteTask: (){
                Provider.of<TodoList>(context,listen: false).deleteTask(index);
              },
          );

          },
          itemCount : Provider.of<TodoList>(context).numberOfTasks,
      ),
    );
  }
}
