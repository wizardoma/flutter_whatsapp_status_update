import 'package:flutter/material.dart';
import 'package:flutter_status_update/commons/themes.dart';
import 'package:flutter_status_update/presentation/chat/chat_screen.dart';
import 'package:flutter_status_update/presentation/notification/notifications.dart';
import 'package:flutter_status_update/presentation/status/status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: kTheme,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Colors.white, size: 30,),
            ),
            PopupMenuButton(
                padding: const EdgeInsets.all(0),
                itemBuilder: (context) {
                  return {"Setting"}.map((e) {
                    return PopupMenuItem(

                      child: Text(e),
                      value: e,
                    );
                  }).toList();
                })
          ],
          centerTitle: false,
          title: Text("WhatsApp Status"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: Text("CHATS")),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Text("STATUS"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Text("NOTIFICATIONS"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            NotificationScreen(),
          ],
        ),
      ),
    );
  }
}
