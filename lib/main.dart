import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'event_card.dart';

void main() {
  runApp(App());
}

final theme = ThemeData();

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: CupertinoColors.black,
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("My events")),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            return EventCard(item: item);
          }),
    );
  }
}

class AppDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(child: Text('H')),
              SizedBox(
                height: 200,
                child: ListView(
                  children: [
                    ListTile(title: Text("Menu1"), onTap: () => print("menu1")),
                    ListTile(title: Text("Menu1")),
                    ListTile(title: Text("Menu1")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
