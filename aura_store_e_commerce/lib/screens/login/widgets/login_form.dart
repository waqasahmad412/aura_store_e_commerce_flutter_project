import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/auth_provider.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailCtrl = TextEditingController(text: 'waqasahmad08766@gmail.com');
  final _passCtrl = TextEditingController(text: 'password123');

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextField(
          label: 'Email',
          controller: _emailCtrl,
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: 'Password',
          controller: _passCtrl,
          obscureText: true,
          prefixIcon: const Icon(Icons.lock_outline),
        ),
        const SizedBox(height: 24),
        CustomButton(
          text: 'Sign In',
          isLoading: auth.isLoading,
          onPressed: () async {
            final success = await auth.signIn(_emailCtrl.text, _passCtrl.text);
            if (success && mounted) {
              Navigator.pushReplacementNamed(context, '/');
            }
          },
        ),
      ],
    );
  }
}
