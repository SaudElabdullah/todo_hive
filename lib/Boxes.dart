import 'package:hive/hive.dart';
import 'package:todo_hive/todo.dart';

class Boxes {
  static Box<ToDo> getTodos() =>
      Hive.box<ToDo>('todo');
}