import 'package:eplorerapp/screns/componants/app_drawer.dart';
import 'package:eplorerapp/screns/componants/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' قائمتى'),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert_sharp,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text(' المهمات المنجزة '),
              ),
              PopupMenuItem(
                child: Text(' جميع المهمات'),
              ),
            ],
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Body(),
    );
  }
}
