import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_hive/Boxes.dart';
import 'package:todo_hive/ListViewToDo.dart';
import 'package:todo_hive/ModalBottomSheet.dart';
import 'package:todo_hive/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  Widget isToDoNull(List<ToDo> toDoList){
    if(toDoList.isEmpty){
      return Text('no Todos');
    } else{
      return ListViewToDo(
        toDoList: toDoList,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: ModalBottomSheet(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ValueListenableBuilder<Box<ToDo>>(
          valueListenable: Boxes.getTodos().listenable(),
          builder: (context, box, _) {
            final todos = box.values.toList().cast<ToDo>();
            return Container(
              // color: Colors.black,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 5,
                top: 5,
              ),
              child: isToDoNull(todos),
            );
          },
        ),
      ),
    );
  }
}
