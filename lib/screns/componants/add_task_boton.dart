import 'package:eplorerapp/screns/componants/task_form.dart';
import 'package:flutter/material.dart';

class AddTaskBoton extends StatelessWidget {
  const AddTaskBoton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return TaskForm();
          }),
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 57, 160, 103),
    );
  }
}
