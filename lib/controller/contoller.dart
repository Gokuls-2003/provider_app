import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void restore() {
    _count = 0;
    notifyListeners();
  }
}
