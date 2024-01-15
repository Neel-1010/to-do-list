
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/task_controller.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskController = Provider.of<TaskController>(context);

    return Expanded(
      child: ListView.builder(
        itemCount: taskController.tasks.length,
        itemBuilder: (context, index) {
          final task = taskController.tasks[index];

          return ListTile(
            title: Text(task.description),
            leading: Checkbox(
              value: task.isDone,
              onChanged: (_) => taskController.toggleTaskStatus(index),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => taskController.deleteTask(index),
            ),
          );
        },
      ),
    );
  }
}
