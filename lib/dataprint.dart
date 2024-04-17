import 'package:assignment_on_inheritance_widget/data.dart';
import 'package:flutter/material.dart';

class Dataprint extends StatefulWidget {
  const Dataprint({super.key});

  @override
  State<Dataprint> createState() => _DataprintState();
}

class _DataprintState extends State<Dataprint> {
  @override
  Widget build(BuildContext context) {
    Datastored sharedDatabj = Datastored.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Id: ${sharedDatabj.empId1}"),
            Text("Id: ${sharedDatabj.empName1}"),
            Text("Id: ${sharedDatabj.userName1}")
          ],
        ),
      ),
    );
  }
}
