import 'package:flutter/material.dart';

import '../models/addTaskControler.dart';
import '../models/task_Details.dart';

class Add_Task extends StatefulWidget {
  // const Add_Task({super.key});

  @override
  State<Add_Task> createState() => _Add_TaskState();
}

class _Add_TaskState extends State<Add_Task> {
  @override
  Widget build(BuildContext context) {
    String realTask ;
    //  String taska = "";

    TextEditingController taskControler = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back))
              ],
            ),
            Container(
                child: TextField(
              controller: taskControler,
              decoration: InputDecoration(),
            )),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        realTask = taskControler.text as String;

                        print(realTask);
                      });
                    },
                    child: Text("Add"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
