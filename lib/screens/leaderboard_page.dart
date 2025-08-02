import 'package:flutter/material.dart';

final List<Map<String, dynamic>> leaderboardData = [
  {'name': 'Alice', 'score': 8400},
  {'name': 'Bob', 'score': 7000},
  {'name': 'Charlie', 'score': 5500},
  {'name': 'Daisy', 'score': 4800},
  {'name': 'You', 'score': 5000},
];

class LeaderboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(18),
      itemCount: leaderboardData.length,
      itemBuilder: (context, index) {
        final entry = leaderboardData[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(entry['name']),
            trailing: Text('₹${entry['score']}'),
          ),
        );
      },
    );
  }
}
