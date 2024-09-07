import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: Text('القائمة الجانبية '),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('التقويم'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('تنبية '),
          onTap: () {},
        ),
        Divider(
          height: 20,
          thickness: 5,
        ),
      ],
    ));
  }
}
