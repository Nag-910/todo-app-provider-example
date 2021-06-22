import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/task_list.dart';
import 'package:provider_example/models/todo_list.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String newTodoData;
  final textField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        color: Colors.blue[100],
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Task name',
                ),
                onChanged: (newText) {
                  newTodoData = newText;
                },
                controller: textField,
              ),
              SizedBox(height: 8.0),
              MaterialButton(
                child: Text('Add task'),
                onPressed: () {
                  if (newTodoData != null) {
                    Provider.of<TodoList>(context, listen: false)
                        .addTodoTask(newTodoData);
                  } else {
                    return null;
                  }
                  textField.clear();
                },
                color: Colors.blue,
              ),
              SizedBox(height: 20.0),
              Text(
                'Todo List [${Provider.of<TodoList>(context).numberOfTasks}]',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.0),
              TaskList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.list_alt,
              semanticLabel: 'Todo list',
              size: 35.0,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.account_box,
              semanticLabel: 'Member list',
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}
