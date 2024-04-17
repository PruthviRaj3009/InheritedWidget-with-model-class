import 'package:flutter/material.dart';

class Datastored extends InheritedWidget {
  final String empId1;
  final String empName1;
  final String userName1;
  const Datastored({
    super.key,
    required this.empId1,
    required this.empName1,
    required this.userName1,
    required super.child,
  });

  static Datastored of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Datastored>()!;
  }

  @override
  bool updateShouldNotify(Datastored oldWidget) {
    return empId1 != oldWidget.empId1 ||
        empName1 != oldWidget.empName1 ||
        userName1 != oldWidget.userName1;
  }
}
