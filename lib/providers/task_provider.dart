import 'package:eplorerapp/models/task.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      title: 'My first task ',
      completex: false,
    ),
  ];
  List<Task> get tasks {
    return _tasks;
  }

  void addTask(task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.remove(index);
    notifyListeners();
  }

  void makeTaskLeted(index) {
    _tasks[index].completex = !_tasks[index].completex;
    notifyListeners();
  }
}
