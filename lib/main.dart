import 'package:astro_app_assesment/Views/auth/first_screen.dart';
import 'package:astro_app_assesment/Views/auth/login_screen.dart';
import 'package:astro_app_assesment/Views/auth/reset_screen.dart';
import 'package:astro_app_assesment/Views/auth/signUp_screen.dart';
import 'package:astro_app_assesment/Views/dashboard/dashboard_screen.dart';
import 'package:astro_app_assesment/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(OccultSciencesApp());
}

class OccultSciencesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Occult Sciences App',
      theme: AppTheme.lightTheme,
      initialRoute: '/firstPage',
      routes: {
        '/firstPage': (context) => FirstScreen(),
        '/login': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/reset': (context) => ResetPasswordScreen(),
        '/signUp': (context) => SignupScreen(),
      },
    );
  }
}
