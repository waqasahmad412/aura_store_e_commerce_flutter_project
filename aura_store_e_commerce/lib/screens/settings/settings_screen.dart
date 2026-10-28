import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/theme_provider.dart';
import 'widgets/settings_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SettingsTile(
            title: 'Dark Mode',
            icon: Icons.dark_mode,
            trailing: Switch(
              value: theme.isDarkMode,
              onChanged: (_) => theme.toggleTheme(),
            ),
          ),
          const SettingsTile(
            title: 'Version 1.0.0',
            icon: Icons.info_outline,
          ),
        ],
      ),
    );
  }
}
