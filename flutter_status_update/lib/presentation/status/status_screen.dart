import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: [
        myStatusUpdate(),
        recentUpdates(),
        viewdStatusUpdates(),
        mutedStatusUpdates(),
      ],
    ));
  }

  Widget recentUpdates() {

  }

  Widget viewdStatusUpdates() {

  }

  Widget mutedStatusUpdates() {

  }
}

Widget myStatusUpdate() {
  return Container();
}
