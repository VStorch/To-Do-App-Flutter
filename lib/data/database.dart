import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('my box');

  // run this method if this is the first time ever the app is opened
  void createInitialData() {
    toDoList = [];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}