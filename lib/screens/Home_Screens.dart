import 'package:flutter/material.dart';

import 'addTask.dart';
import 'task.dart';
import 'to-does.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> quotesList = [];
  TextEditingController TextControlerFiesd = TextEditingController();
  var pageIndex = 0;
  List pages = [taskDetais(), to_Does()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          hoverColor: Colors.deepPurple,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Insert Name'),
                    content: TextField(
                      controller: TextControlerFiesd,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contact Name',
                      ),
                    ),
                    actions: [
                      MaterialButton(
                        child: Text('Submit'),
                        onPressed: () {
                          quotesList.insert(0, TextControlerFiesd.text);
                        },
                      )
                    ],
                  );
                });
            // Navigator.push(
          }), //     context, MaterialPageRoute(builder: ((context) => Add_Task())));

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notes,
              ),
              label: 'Notes'),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_outlined,
            ),
            label: ("To-Dos"),
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orangeAccent,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
      body: pages[pageIndex],

      //  floatingActionButtonLocation: FloatingActionButtonLocation.,
    );
  }
}
