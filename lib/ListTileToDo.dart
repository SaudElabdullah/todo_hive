import 'package:flutter/material.dart';
import 'package:todo_hive/todo.dart';

class ListTileToDo extends StatelessWidget {
  ListTileToDo({
    required this.toDo,
  });

  late final ToDo toDo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        toDo.delete();
      },
      child: ListTile(
        title: Text(
          toDo.todo,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          toDo.date.toString(),
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
