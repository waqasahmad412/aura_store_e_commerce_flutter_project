import 'package:flutter/material.dart';
import '../../../models/user_model.dart';

class ProfileHeader extends StatelessWidget {
  final UserModel? user;
  const ProfileHeader({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundColor: Colors.indigo,
          child: Icon(Icons.person, size: 48, color: Colors.white),
        ),
        const SizedBox(height: 12),
        Text(
          user?.name ?? 'User Profile',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          user?.email ?? 'user@example.com',
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
