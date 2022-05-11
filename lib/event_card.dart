import 'package:event_mobile/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key, required this.item}) : super(key: key);

  final Event item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10,
      leading: CircleAvatar(
        child: Text(item.name[0]),
        foregroundColor: Colors.white,
        backgroundColor: item.color,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text(item.description ?? ""),
          SizedBox(height: 5),
          Text(item.address ?? ""),
        ],
      ),
      trailing: Icon(CupertinoIcons.arrow_right),
      title: Text(item.name),
      onTap: () {
        final page = MaterialPageRoute(
          builder: (_) => EventDetails(),
        );
        Navigator.push(context, page);
      },
    );
  }
}

class EventDetails extends StatefulWidget {
  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  var count = 0;
  var count2 = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$count $count2"),
      ),
      body: Center(
        child: CupertinoButton(
          child: Text("Click"),
          onPressed: () => setState(() {
            count++;
            count2--;
          }),
        ),
      ),
    );
  }
}
