import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class TimerTab extends StatefulWidget {
  const TimerTab({super.key});

  @override
  State<TimerTab> createState() => _TimerTabState();
}

class _TimerTabState extends State<TimerTab> {
  int _seconds = 60;
  bool _running = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HIIT Interval Timer'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppTheme.primary, width: 8),
              ),
              alignment: Alignment.center,
              child: Text(
                '00:${_seconds.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 36),
            ElevatedButton.icon(
              onPressed: () => setState(() => _running = !_running),
              icon: Icon(_running ? Icons.pause : Icons.play_arrow),
              label: Text(_running ? 'Pause Interval' : 'Start Interval'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
