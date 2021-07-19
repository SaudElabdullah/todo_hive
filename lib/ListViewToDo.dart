import 'package:flutter/material.dart';
import 'package:todo_hive/ListTileToDo.dart';
import 'package:todo_hive/todo.dart';

class ListViewToDo extends StatelessWidget {
  ListViewToDo({required this.toDoList});

  late final List<ToDo> toDoList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(5),
      itemCount: toDoList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileToDo(
          toDo: toDoList.elementAt(index),
        );
      },
    );
  }
}
