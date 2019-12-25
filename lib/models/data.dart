import 'package:flutter/foundation.dart';
import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void changeString(String newString) {
//    data = newString;
//    notifyListeners();
  }
}
