import 'package:flutter/material.dart';
import 'package:todolistapp/widgets/task_tile.dart';
import 'package:todolistapp/widgets/tasks_list.dart';

import 'package:todolistapp/screens/add_task_screen.dart';

import '../models/tasks.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Hikking with mi sol'),
    Task(name: 'Besa lo mejor mi sol'),
    Task(name: 'Abraza mi sol'),
  ];

  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.add, color: Colors.grey),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                (newTaskTile) {
                  setState(() {
                    tasks.add(Task(name: newTaskTile));
                  });
                  Navigator.pop(context);
                },
              ),
            );
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 40.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 42.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text("To-Do List",
                        style: TextStyle(
                            fontSize: 48.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 5.0),
                    Text(
                      "${tasks.length} Tasks",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 0.0,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: TasksList(tasks),
              ),
            ),
          ],
        ));
  }
}
