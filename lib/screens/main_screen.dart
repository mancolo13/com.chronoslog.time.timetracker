import 'package:flutter/material.dart';
import 'tabs/stopwatch_tab.dart';
import 'tabs/laps_tab.dart';
import 'tabs/timer_tab.dart';
import 'tabs/stats_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [StopwatchTab(), LapsTab(), TimerTab(), StatsTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.timer_outlined), selectedIcon: Icon(Icons.timer), label: 'Stopwatch'),
          NavigationDestination(icon: Icon(Icons.format_list_numbered_outlined), selectedIcon: Icon(Icons.format_list_numbered), label: 'Laps'),
          NavigationDestination(icon: Icon(Icons.hourglass_bottom_outlined), selectedIcon: Icon(Icons.hourglass_bottom), label: 'Interval'),
          NavigationDestination(icon: Icon(Icons.insights_outlined), selectedIcon: Icon(Icons.insights), label: 'Stats'),
        ],
      ),
    );
  }
}
