import 'package:flutter/foundation.dart';
import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void changeString(String newString) {
//    data = newString;
//    notifyListeners();
  }
}
