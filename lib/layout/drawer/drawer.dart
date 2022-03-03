import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Text('create drawer widget tree here'),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'appName',
          style: Theme.of(context).textTheme.headline2,
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Image.asset(
            'assets/images/menu.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
