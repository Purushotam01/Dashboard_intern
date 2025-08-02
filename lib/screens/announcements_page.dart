import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(18),
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.campaign),
            title: Text("Welcome to the Fundraising Drive!"),
            subtitle: Text("Kick-off meeting at 10:00 AM, Monday."),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.update),
            title: Text("Leaderboard Updated!"),
            subtitle: Text("Check your progress and aim for the top."),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.celebration),
            title: Text("Congratulations!"),
            subtitle: Text("5000+ donations raised this week."),
          ),
        ),
      ],
    );
  }
}
