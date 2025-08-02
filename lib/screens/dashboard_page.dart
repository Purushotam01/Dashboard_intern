import 'package:flutter/material.dart';
import 'leaderboard_page.dart';
import 'announcements_page.dart';

class DashboardPage extends StatefulWidget {
  final String internName;

  const DashboardPage({Key? key, required this.internName}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static const String referralCode = 'yourname2025';
  static const int totalDonations = 5000;

  static final List<Widget> _pages = <Widget>[
    _DashboardContent(),
    LeaderboardPage(),
    AnnouncementsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intern Dashboard')),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _DashboardContent(
            internName: widget.internName,
            referralCode: referralCode,
            totalDonations: totalDonations,
          ),
          LeaderboardPage(),
          AnnouncementsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: "Leaderboard"),
          BottomNavigationBarItem(icon: Icon(Icons.announcement), label: "Announcements"),
        ],
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  final String internName;
  final String referralCode;
  final int totalDonations;

  const _DashboardContent({
    Key? key,
    this.internName = "John Doe",
    this.referralCode = "yourname2025",
    this.totalDonations = 5000,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello, $internName!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.code, color: Colors.indigo),
              title: Text("Referral Code"),
              subtitle: Text(referralCode),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.attach_money, color: Colors.green),
              title: Text("Total Donations Raised"),
              subtitle: Text("₹${totalDonations.toString()}"),
            ),
          ),
          SizedBox(height: 20),
          Text("Rewards / Unlockables", style: TextStyle(fontWeight: FontWeight.bold)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _RewardCard(icon: Icons.emoji_events, label: "Bronze Badge"),
                SizedBox(width: 8),
                _RewardCard(icon: Icons.emoji_events, label: "Silver Badge"),
                SizedBox(width: 8),
                _RewardCard(icon: Icons.card_giftcard, label: "Gift Card"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _RewardCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool unlocked;

  const _RewardCard({super.key, required this.icon, required this.label, this.unlocked = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: unlocked ? Colors.white : Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Icon(icon, color: unlocked ? Colors.amber : Colors.grey, size: 32),
            Text(label, style: TextStyle(color: unlocked ? Colors.black : Colors.grey)),
          ],
        ),
      ),
    );
  }
}
