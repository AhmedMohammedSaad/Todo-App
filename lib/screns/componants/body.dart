import 'package:eplorerapp/screns/componants/task_list.dart';
import 'package:eplorerapp/screns/componants/wellcome.dart';
import 'package:flutter/material.dart';

import 'add_task_boton.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Wellcome(),
        AddTaskBoton(),
        TaskList(),
      ],
    );
  }
}
