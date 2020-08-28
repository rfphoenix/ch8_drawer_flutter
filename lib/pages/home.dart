import 'package:flutter/material.dart';
import 'package:ch8_drawer_flutter/widgets/birthdays.dart';
import 'package:ch8_drawer_flutter/widgets/gratitude.dart';
import 'package:ch8_drawer_flutter/widgets/reminders.dart';
import 'package:ch8_drawer_flutter/widgets/left_drawer.dart';
import 'package:ch8_drawer_flutter/widgets/right_drawer.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const LeftDrawerWidget(),
      endDrawer: const RightDrawerWidget(),
      body: SafeArea(child: Container()),
    );
  }
}
