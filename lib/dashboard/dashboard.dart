/* import 'package:finsync_2/dashboard/analytics.dart';
import 'package:finsync_2/dashboard/goals.dart';
import 'package:finsync_2/dashboard/homePage.dart';
import 'package:finsync_2/dashboard/settings.dart';
import 'package:finsync_2/dashboard/transactions.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Homepage(),
    GoalsPage(),
    AnalyticsPage(),
    TransactionsPage(),
    Settings(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.person_2)),
        title: Text(
          "Finsync",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body:/*  SafeArea(child: Column(children: [ */_pages[_selectedIndex]/* ])), */,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.adjust), label: 'Goal'),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined), label: 'Analytics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.money), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
 */