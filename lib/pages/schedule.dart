import 'package:flutter/material.dart';
import 'package:flutter_lab6/pages/navbar.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Расписание',), ),
      drawer: NavBar(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(child: Text('container1'),),
              Container(child: Text('container1'),),
            ],),),
      ),

    );
  }
}