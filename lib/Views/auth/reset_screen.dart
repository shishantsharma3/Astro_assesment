import 'package:astro_app_assesment/Service/auth_service.dart';
import 'package:astro_app_assesment/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  void _resetPassword(BuildContext context) async {
    final email = _emailController.text;
    final success = await AuthService().resetPassword(email);
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Password reset email sent.")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assests/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Enter your email to reset your password"),
              CustomTextField(
                controller: _emailController,
                labelText: '',
                icon: Icons.email,
              ),
              ElevatedButton(
                onPressed: () => _resetPassword(context),
                child: const Text("Reset Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
