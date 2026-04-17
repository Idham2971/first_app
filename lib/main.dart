import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager UTS',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Memanggil tema global
      home: const SplashScreen(),
    );
  }
}
