import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timing History'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Text('32 Sessions', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  SizedBox(height: 6),
                  Text('Total Workouts Timed', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.speed_rounded, color: AppTheme.primary, size: 40),
              title: const Text('Average Pace'),
              trailing: const Text('4m 20s / km', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
