import 'package:eplorerapp/models/task.dart';
import 'package:eplorerapp/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formkey = GlobalKey<FormState>();
  final tasktitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -40,
            top: -40,
            child: CircleAvatar(
              child: Icon(Icons.close),
              backgroundColor: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: tasktitle,
                    decoration:
                        InputDecoration(labelText: 'Add task title ....'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Text('Add task'),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.of(context).pop();
                        context.read<TaskProvider>().addTask(
                              Task(
                                title: tasktitle.text,
                                completex: false,
                              ),
                            );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
