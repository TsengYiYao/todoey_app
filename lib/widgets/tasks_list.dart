import 'package:flutter/material.dart';
//import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/data.dart';

class TasksList extends StatelessWidget {
//  //final List<Task> tasks;
//
//  //TasksList({this.tasks});
//  TasksList();
//
//  @override
//  _TasksListState createState() => _TasksListState();
//}
//
//class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<Data>(context).tasks[index].name,
          isChecked: Provider.of<Data>(context).tasks[index].isDone,
          onChecked: (bool newValue) {
//            setState(() {
//              Provider.of(context).tasks[index].toggleDone();
//            });
          },
        );
      },
      itemCount: Provider.of<Data>(context).tasks.length,
    );
  }
}
