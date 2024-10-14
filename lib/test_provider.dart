import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }

  decrement() {
    _count--;
    notifyListeners();
  }
}
