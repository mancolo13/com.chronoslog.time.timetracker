import 'package:flutter/material.dart';

class LapsTab extends StatelessWidget {
  const LapsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final laps = [
      {'lap': 'Lap 4', 'split': '00:48.12', 'total': '03:12.45', 'fastest': true},
      {'lap': 'Lap 3', 'split': '00:52.30', 'total': '02:24.33', 'fastest': false},
      {'lap': 'Lap 2', 'split': '00:51.10', 'total': '01:32.03', 'fastest': false},
      {'lap': 'Lap 1', 'split': '00:40.93', 'total': '00:40.93', 'fastest': false},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Split Laps Breakdown'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: laps.length,
        itemBuilder: (ctx, i) {
          final l = laps[i];
          final isFastest = l['fastest'] as bool;
          return Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Text(l['lap'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              title: Text(l['split'] as String, style: TextStyle(fontWeight: FontWeight.bold, color: isFastest ? Colors.greenAccent : null)),
              subtitle: Text('Overall: ${l['total']}'),
              trailing: isFastest ? const Chip(label: Text('⚡ Fastest'), backgroundColor: Colors.white12) : null,
            ),
          );
        },
      ),
    );
  }
}
