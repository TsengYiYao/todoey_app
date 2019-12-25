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
            return TaskTile(
              taskTitle: data.tasks[index].name,
              isChecked: data.tasks[index].isDone,
              onChecked: (bool newValue) {
//            setState(() {
//              Provider.of(context).tasks[index].toggleDone();
//            });
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
