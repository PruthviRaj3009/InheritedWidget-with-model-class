import 'package:assignment_on_inheritance_widget/data.dart';
import 'package:assignment_on_inheritance_widget/dataprint.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Page());
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController empId = TextEditingController();

  TextEditingController empName = TextEditingController();
  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 237, 224, 111),
          centerTitle: true,
          title: const Text(
            "Login Page",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter UserName";
                    } else {
                      return null;
                    }
                  },
                  controller: empId,
                  decoration: InputDecoration(
                    label: const Text(
                      "Enter ID",
                      style: TextStyle(color: Colors.blue),
                    ),
                    hintText: "Enter UserName:",
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter UserName";
                    } else {
                      return null;
                    }
                  },
                  controller: empName,
                  decoration: InputDecoration(
                    hintText: "Enter Employee Name:",
                    label: const Text(
                      "Enter Employee Name",
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter UserName";
                    } else {
                      return null;
                    }
                  },
                  controller: userName,
                  decoration: InputDecoration(
                    hintText: "Enter Employee User Name:",
                    label: const Text(
                      "Enter User Name",
                      style: TextStyle(color: Colors.blue),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // userName.text = Datastored.of(context).userName1;
                    // empName.text = Datastored.of(context).empName1;
                    // empId.text = Datastored.of(context).empId1;
                    // userName.text = Datastored.userName1;
                    //  empId.text = Datastored.empId1;
                    //   empName.text = Datastored.empName1;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Datastored(
                          empId1: empId.text,
                          empName1: empName.text,
                          userName1: userName.text,
                          child: const Dataprint(),
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    " Submit",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  //style: ButtonStyle(backgroundColor: Colors.orange),
                ),
              ],
            ),
          ),
        ));
  }
}
