import 'package:flutter/material.dart';
import 'screens/catalog_screen.dart';

void main() => runApp(const AuraStoreApp());

class AuraStoreApp extends StatelessWidget {
  const AuraStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aura Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFEC4899)),
      ),
      home: const CatalogScreen(),
    );
  }
}
