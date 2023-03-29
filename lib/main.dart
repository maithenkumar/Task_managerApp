import 'package:flutter/material.dart';
import './screens/Home_Screens.dart';
import 'screens/addTask.dart';
import 'screens/task.dart';
import 'wedgets/AddTask_Widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        home: myApp());
  }
}
