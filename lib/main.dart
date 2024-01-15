
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/task_controller.dart';
import 'views/task_list_view.dart';
import 'views/task_form_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        print("Creating TaskController");
        return TaskController();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'To Do List Neel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ),
          body: Column(
            children: [
              TaskFormView(),
              TaskListView(),
            ],
        ),          ),

    ),
    );
  }
}
