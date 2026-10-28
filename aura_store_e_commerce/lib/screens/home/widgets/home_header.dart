import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final String appName;
  const HomeHeader({super.key, required this.appName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to', style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 13)),
                const SizedBox(height: 4),
                Text(appName, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.bolt, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
