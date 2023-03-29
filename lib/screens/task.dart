import 'package:flutter/material.dart';

import '../models/addTaskControler.dart';

class taskDetais extends StatefulWidget {
  const taskDetais({super.key});

  @override
  State<taskDetais> createState() => _taskDetaisState();
}

class _taskDetaisState extends State<taskDetais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.vertical_distribute_rounded,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "All Notes",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                ListView.builder(
                    itemBuilder: (context, index) => Container(
                          child: Text(""),
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  List<String> quotesList = [];
  TextEditingController TextControlerFiesd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black38,
          title: Text("Quotes"),
        ),
        body: Column(children: [
          TextField(
            controller: TextControlerFiesd,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  quotesList.insert(0, TextControlerFiesd.text);
                  // Navigator.pop(context);
                });
              },
              child: Text("Sumbmit")),
          ...quotesList
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flexible(
                      child: InkWell(
                        child: Container(
                          child: Text(e),
                          width: 100,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ]),
      ),
    );
  }
}
