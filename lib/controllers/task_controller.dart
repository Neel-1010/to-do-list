
import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskController extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String description) {
    if (description.isNotEmpty) {
      tasks.add(Task(description: description));
      notifyListeners();
    }
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }
}
