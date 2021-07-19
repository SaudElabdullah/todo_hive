import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId: 0)
class ToDo extends HiveObject{
  @HiveField(0)
  late final String todo;
  @HiveField(1)
  late final String date;
}