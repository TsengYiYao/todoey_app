import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
//import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              onChecked: (bool newValue) {
                data.updateTask(task);
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
