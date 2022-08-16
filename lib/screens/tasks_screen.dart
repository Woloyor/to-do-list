import 'package:flutter/material.dart';
import 'package:todolistapp/widgets/task_tile.dart';
import 'package:todolistapp/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
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
                      '12 Tasks',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                height: 300.0,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: TasksList(),
              ),
            ),
          ],
        ));
  }
}
