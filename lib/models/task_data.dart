import 'package:flutter/foundation.dart';
import 'package:state_management/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _task = [
    Task(name: "Add new task."),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  void addTask(String taskTitle) {
    final newTask = Task(name: taskTitle);
    _task.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
