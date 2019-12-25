import 'package:flutter/material.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:todoey_app/models/data.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        home: TasksScreen(),
      ),
      create: (context) => Data(),
    );
  }
}
