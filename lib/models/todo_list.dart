import 'package:flutter/cupertino.dart';
import 'package:provider_example/models/task.dart';

class TodoList extends ChangeNotifier{
  List <Task> tasks=[];
  int get numberOfTasks{
    return tasks.length;
  }
  void addTodoTask(String newText){
     tasks.add(Task(taskName: newText));
    notifyListeners();
   }
   void deleteTask(int task){
    tasks.removeAt(task);
    notifyListeners();
   }

}