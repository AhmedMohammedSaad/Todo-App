import 'package:eplorerapp/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return Expanded(
      child: Container(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(
                  index.toString(),
                ),
                background: Container(
                  color: Theme.of(context).canvasColor,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40,
                  ),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(
                    right: 20,
                  ),
                ),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  taskProvider.removeTask(index);
                },
                child: ListTile(
                  title: Text(
                    taskProvider.tasks[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Image(
                    image: taskProvider.tasks[index].completex
                        ? AssetImage('images/true1.png')
                        : AssetImage('images/false1.png'),
                  ),
                  onTap: () {
                    taskProvider.makeTaskLeted(index);
                  },
                ),
              );
            },
            itemCount: taskProvider.tasks.length,
          ),
        ),
        margin: EdgeInsets.only(left: 16, right: 16),
      ),
      flex: 5,
    );
  }
}
