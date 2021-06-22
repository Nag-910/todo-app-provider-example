
class Task{
  String taskName ;
  bool isDone  ;
  Task({this.taskName, this.isDone = false});
  bool  toggleCheckBox(){
   return isDone = ! isDone;
  }
}